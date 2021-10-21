# n個の整数の配列numsが与えられた場合、
# 次のように、すべての一意の4つ組[nums [a]、nums [b]、nums [c]、nums [d]]の配列を返します。
# ・0 <= a、b、c、d < n 
# ・a、b、c、およびdは区別されます。 
# ・nums [a] + nums [b] + nums [c] + nums [d] == ターゲット
# Input: nums = [1,0,-1,0,-2,2], target = 0
# Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  
end

require 'minitest/autorun'

class FourSumTest < Minitest::Test
  def test_four_sum
    assert_equal [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]], four_sum([1,0,-1,0,-2,2], 0)
    assert_equal [[2,2,2,2]], four_sum([2,2,2,2,2], 8)
  end
end