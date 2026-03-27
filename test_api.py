import unittest
import requests

BASE_URL = "http://localhost:8000"

class TestHackathonAPI(unittest.TestCase):

    def setUp(self):
        """Runs before each test"""
        self.admin_credentials = {"username": "admin", "password": "admin"}
        self.wrong_credentials = {"username": "fake", "password": "wrong"}
        self.token = None

    def test_auth_success(self):
        """Test successful authentication"""
        response = requests.post(f"{BASE_URL}/auth/token", json=self.admin_credentials)
        self.assertEqual(response.status_code, 200)
        data = response.json()
        self.assertIn("access_token", data)
        self.assertEqual(data["token_type"], "bearer")
        self.token = data["access_token"]

    def test_auth_failure(self):
        """Test authentication failure with wrong credentials"""
        response = requests.post(f"{BASE_URL}/auth/token", json=self.wrong_credentials)
        self.assertEqual(response.status_code, 401)  # Unauthorized

    def test_protected_route_without_token(self):
        """Access protected route without token"""
        response = requests.get(f"{BASE_URL}/whoami")
        self.assertEqual(response.status_code, 401)

    def test_protected_route_with_token(self):
        """Access protected route with valid token"""
        # Authenticate first
        response = requests.post(f"{BASE_URL}/auth/token", json=self.admin_credentials)
        token = response.json()["access_token"]

        headers = {"Authorization": f"Bearer {token}"}
        response = requests.get(f"{BASE_URL}/whoami", headers=headers)
        self.assertEqual(response.status_code, 200)
        data = response.json()
        self.assertEqual(data["sub"], "admin")

if __name__ == "__main__":
    unittest.main()
