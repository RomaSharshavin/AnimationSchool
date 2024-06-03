import unittest
import myform

class Test_test_email(unittest.TestCase):
    def test_A(self):
        list_mail_uncor = ["", "1", "@", "@mail", "example@mail", "@@", "Nikita//@gmail", "\$jdewnce@gmail.com", "!defxyz%%%%%%%%%@example.com"]
        for x in list_mail_uncor:
            self.assertFalse(myform.mail(x))
            
    def test_A(self):
        list_mail_uncor = ["m.m@mail.ru", "Exampl@gmail.com", "11nikita12@gmail.com", "E23xdfghbvf@mail.ru", "example@mail.bk.com"]
        for x in list_mail_uncor:
            self.assertTrue(myform.mail(x))

if __name__ == '__main__':
    unittest.main()
