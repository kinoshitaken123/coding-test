
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

n1 = TreeNode.new(1)

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