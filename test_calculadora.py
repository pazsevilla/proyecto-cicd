import unittest
from calculadora import sumar, restar

class TestCalculadora(unittest.TestCase):
    def test_sumar(self):
        self.assertEqual(sumar(2, 3), 5)

    def test_restar(self):
        self.assertEqual(restar(5, 2), 3)  # <--- Test para la nueva funcionalidad

if __name__ == '__main__':
    unittest.main()
