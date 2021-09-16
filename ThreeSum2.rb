def three_sum(nums)
    nums = nums.sort
    result = []
    (nums.length - 2).times do |i|
      if i > 0 && nums[i] == nums[i - 1]
        next
      end
      left = i + 1
      right = nums.length - 1
      while left < right
        sum = nums[i] + nums[left] + nums[right]
        if sum < 0 
          left += 1
        elsif sum > 0
          right -= 1
        else
          result.push([nums[i], nums[left], nums[right]])
          while left < right && nums[left] == nums[left + 1]
            left += 1
          end
          while left < right && nums[right] == nums[right - 1]
            right -= 1
          end
          left += 1
          right -= 1
        end
      end
    end
    return result
  end
  
  require 'minitest/autorun'
  
  class TtreeSumTest < Minitest::Test
    def test_three_sum
      assert_equal [[-1,-1,2],[-1,0,1]], three_sum([-1,0,1,2,-1,-4])
      assert_equal [], three_sum([])
      assert_equal [], three_sum([0])
      assert_equal [[-2,0,2]], three_sum([-2,0,0,2,2])
    end
  end
  