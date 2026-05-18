import unittest
from calculadora import sumar 

class TestCalculadora(unittest.TestCase):
    def test_sumar(self):
        self.assertEqual(sumar(2, 3), 5)

if __name__ == '__main__':
    unittest.main()
