import unittest
import lsst.afw
import desc.apps_test

class AppsTestCase(unittest.TestCase):
    def setUp(self):
        pass
    def tearDown(self):
        pass
    def test_apps_test_class(self):
        self.assertEqual(42, desc.apps_test.test_app())

if __name__ == '__main__':
    unittest.main()
