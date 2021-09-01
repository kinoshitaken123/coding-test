# サイズnの配列numsが与えられた場合、多数決要素を返します。
# 多数決要素は、n/2回以上出現する要素です。
# 多数決要素は常に配列に存在すると考える
# Inout: nums = [3,2,3]
# Output: 3

# @param {Integer[]} nums
# @return {Integer}

def majority_element(nums)
    # length:7
    #  ----------
    # [1,1,1,2,2,2,]
    #           ----------

    # length:8
    #  ----------
    # [1, 1, 1, 2 ,2, 2, 2, 2]
    #           -------------
    nums =nums.sort
    return nums[nums.length/2]
end

require 'minitest/autorun'

class MajorityElementTest < Minitest::Test 
    def test_majority_element
        assert_equal 3, majority_element([3,2,3])
        assert_equal 2, majority_element([2,2,1,1,1,2,2])
        assert_equal 5, majority_element([4,5,4,5,4,5,5,5])
    end    
end    


#sort 
#ブロックの最後に評価される値が整数を返してあげれば並び替えてくれるわけです。
#<=>メソッドは何らかの比較をして1, -1, 0, nilのいずれかを返すように実装されているので、それを使えば簡単に並び替えできる、というわけです