## 二分木のルートが与えられた場合、そのノードの値のポストオーダートラバーサル(後順)を返します。
# Input: root = [1,null,2,3]
# Output: [3,2,1]

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end
  # @param {TreeNode} root
  # @return {Integer[]}
  def postorder_traversal(root)
    result = []
    if root == nil
      return []
    end
    result += postorder_traversal(root.left)
    result += postorder_traversal(root.right)
    result.push(root.val)
    return result
  end
  
  require 'minitest/autorun'
  
  class BinaryTreePostorderTraversalTest < Minitest::Test
    def test_postorder_traversal1
      tn1 = TreeNode.new(1)
      tn2 = TreeNode.new(2)
      tn3 = TreeNode.new(3)
      tn1.right = tn2
      tn2.left = tn3
      assert_equal [3,2,1], postorder_traversal(tn1)
    end
    def test_postorder_traversal2
      assert_equal [], postorder_traversal(nil)
    end
    def test_postorder_traversal3
      tn1 = TreeNode.new(1)
      assert_equal [1], postorder_traversal(tn1)
    end
    def test_postorder_traversal4
      tn1 = TreeNode.new(1)
      tn2 = TreeNode.new(2)
      tn1.left = tn2
      assert_equal [2,1], postorder_traversal(tn1)
    end
    def test_postorder_traversal5
      tn1 = TreeNode.new(1)
      tn2 = TreeNode.new(2)
      tn1.right = tn2
      assert_equal [2,1], postorder_traversal(tn1)
    end
  end