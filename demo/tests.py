from django.test import TestCase


class DemoTests(TestCase):

    def test_x(self):
        self.assertEqual(0, 0)

    def test_y(self):
        self.assertEqual(1, 1)

    def test_z(self):
        self.assertEqual(2, 2)

    def test_a(self):
        self.assertEqual(3, 4)


    def test_zzz(self):
        for a in range(10):
            for b in range(10):
                for c in range(10):
                    self.assertTrue(True)

