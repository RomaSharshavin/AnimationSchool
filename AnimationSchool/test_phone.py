import unittest
from myform import is_valid_phone

class TestPhoneValidation(unittest.TestCase):
    def test_valid_phone_numbers(self):
        valid_phone_numbers = [
            "+1234567890", 
            "123-456-7890", 
            "(123) 456-7890", 
            "+1 (123) 456-7890",
            "1-123-456-7890", 
            "+12 3456 7890", 
            "+12-3456-7890",
            "+12345678901234",
            "1234567890",
            "(123) 456 7890"
        ]
        for phone in valid_phone_numbers:
            with self.subTest(phone=phone):
                self.assertTrue(is_valid_phone(phone))

    def test_invalid_phone_numbers(self):
        invalid_phone_numbers = [
            "", 
            "123", 
            "abc", 
            "1234567890", 
            "12-3456-7890", 
            "+1 (123) 456-789", 
            "(123) 456-7890 ext. 1234",
            "+", 
            "1234-5678-9012",
            "1 800 123 4567"
        ]
        for phone in invalid_phone_numbers:
            with self.subTest(phone=phone):
                self.assertFalse(is_valid_phone(phone))

if __name__ == '__main__':
    unittest.main()