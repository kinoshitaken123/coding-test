# 二分木の根が与えられたら、それがそれ自体の鏡であるかどうかを確認します
# （つまり、その中心を中心に対称になります）。
# Input: root = [1,2,2,3,4,4,3]
# Output: true

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end

  t1 = TreeNode.new(1)
  t2 = TreeNode.new(2)
  t3 = TreeNode.new(3)
  t4 = TreeNode.new(4)
  t5 = TreeNode.new(2)
  t6 = TreeNode.new(4)
  t7 = TreeNode.new(3)
  t1.left = t2
  t2.left = t3
  t2.right = t4
  t1.right = t5
  t5.left = t6
  t5.right = t7

  def is_symmetric(root)
    return compare(root.left, root.right)
  end
  
  def compare(left, right)
    if left == nil && right == nil
      return true
    elsif left == nil || right == nil
      return false
    else
      return left.val == right.val && compare(left.left, right.right) && compare(left.right, right.left)
    end
  end
  
  p is_symmetric(t1)