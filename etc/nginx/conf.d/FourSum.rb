def four_sum(nums, target)
  
end

require 'minitest/autorun'

class FourSumTest < Minitest::Test
  def test_four_sum
    assert_equal [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]], four_sum([1,0,-1,0,-2,2], 0)
    assert_equal [[2,2,2,2]], four_sum([2,2,2,2,2], 8)
  end
end