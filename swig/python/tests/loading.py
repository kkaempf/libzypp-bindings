import unittest

import sys
sys.path.insert(0, '../../../../build/swig/python')

class TestSequenceFunctions(unittest.TestCase):
    
  def testloading(self):
    import zypp


if __name__ == '__main__':
  unittest.main()
