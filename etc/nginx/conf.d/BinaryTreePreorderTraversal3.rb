# 二分木のルートが与えられた場合、そのノードの値のプレオーダートラバーサル(前順)を返します。
# Input: root = [1,null,2,3]
# Output: [1,2,3]

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
  def preorder_traversal(root)
    result = []
    if root == nil
      return []
    end
    result.push(root.val)
    result += preorder_traversal(root.left)
    result += preorder_traversal(root.right)
    return result
  end
  
  require 'minitest/autorun'
  
  class BinaryTreePreorderTraversalTest < Minitest::Test
    def test_preorder_traversal1
      tn1 = TreeNode.new(1)
      tn2 = TreeNode.new(2)
      tn3 = TreeNode.new(3)
      tn1.right = tn2
      tn2.left = tn3
      assert_equal [1,2,3], preorder_traversal(tn1)
    end
    def test_preorder_traversal2
      assert_equal [], preorder_traversal(nil)
    end
    def test_preorder_traversal3
      tn1 = TreeNode.new(1)
      assert_equal [1], preorder_traversal(tn1)
    end
    def test_preorder_traversal4
      tn1 = TreeNode.new(1)
      tn2 = TreeNode.new(2)
      tn1.left = tn2
      assert_equal [1,2], preorder_traversal(tn1)
    end
    def test_preorder_traversal5
      tn1 = TreeNode.new(1)
      tn2 = TreeNode.new(2)
      tn1.right = tn2
      assert_equal [1,2], preorder_traversal(tn1)
    end
  end
  