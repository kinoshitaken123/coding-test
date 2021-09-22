class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

n1 = TreeNode.new(1)
# n2 = TreeNode.new(2)
# n3 = TreeNode.new(3)
# n1.left = n2
# n2.left = n3

def inorder_traversal(root)
  result = []
  if root == nil
    return result
  end
  if root.left
    result += inorder_traversal(root.left)
  end
  result.push(root.val)
  if root.right
    result += inorder_traversal(root.right)
  end
  return result
end

p inorder_traversal(nil)