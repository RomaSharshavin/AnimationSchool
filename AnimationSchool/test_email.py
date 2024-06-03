import unittest
from myform import is_valid_email

class TestEmailValidation(unittest.TestCase):
    def test_valid_emails(self):
        valid_emails = ["m.m@mail.ru", 
                        "m1@gmail.com", 
                        "lil%11@gmail.com", 
                        "lil-uchi18%n@mail.ru", 
                        "john.doe@example.com", 
                        "bob123@yahoo.co.jp", 
                        "nathan.miller@mydomain.org", 
                        "peter_parkinson123@gmail.com",
                        "emma-jones@example.net", 
                        "maria_garcia123@example.com"]
        for email in valid_emails:
            with self.subTest(email=email):
                self.assertTrue(is_valid_email(email))

    def test_invalid_emails(self):
        invalid_emails = ["", 
                          "1", 
                          "m1@", 
                          "m1@@mail", 
                          "mail.com", 
                          "m@mail.", 
                          "m@.com", 
                          "m@com", 
                          "m1@.mail.com", 
                          "m@mail..com"]
        for email in invalid_emails:
            with self.subTest(email=email):
                self.assertFalse(is_valid_email(email))

if __name__ == '__main__':
    unittest.main()