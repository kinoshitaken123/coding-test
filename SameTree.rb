# 2つの二分木pとqの根が与えられた場合、
# それらが同じであるかどうかをチェックする関数を記述します。 
# 2つの二分木は、構造的に同一であり、
# ノードの値が同じである場合、同じであると見なされます。
# Input: p = [1,2,3], q = [1,2,3]
# Output: true

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end

  n1 = TreeNode.new(1)
  n2 = TreeNode.new(2)
  n3 = TreeNode.new(3)
  n4 = TreeNode.new(1)
  n5 = TreeNode.new(2)
  n6 = TreeNode.new(3)

  n1.left  = n2
  n1.right = n3

  n4.left  = n5
  n4.right = n6

  def is_same_tree(p,q)
    if p && q
        return p.val == q.val && is_same_tree(p.left,q.left) && is_same_tree(p.right,q.right)
    else
        return p == q
    end        
  end 

  p is_same_tree(n1,n4)