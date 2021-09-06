# 要素が昇順でソートされる整数配列numsが与えられた場合、
# それを高さバランスのとれた二分探索木に変換します。
# 高さバランスのとれた二分木は、
# すべてのノードの2つのサブツリーの深さが1つより大きく異なることのない二分木です。
# Input: nums = [-10,-3,0,5,9]
# Output: [0,-3,9,-10,null,5]
# Explanation: [0,-10,5,null,-3,null,9] is also accepted:

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end

  def sorted_array_to_bst(nums)
    if nums.length <= 0
        return nil
    end    
    middle = nums.length / 2
    root = TreeNode.new(nums[middle])
    root.left = sorted_array_to_bst(nums[0...middle])
    root.right = sorted_array_to_bst(nums[(middle + 1)..-1])
    return root
  end 

  p sorted_array_to_bst([-10,-3,0,5,9]).val