# 二分木の根を与えられて、その最大の深さを返します。
# 二分木の最大深度は、ルートノードから最も遠いリーフノードまでの最長パスに沿ったノードの数です。
# Input: root = [3,9,20,null,null,15,7]
# Output: 3

tn1 = TreeNode.new(3)
tn2 = TreeNode.new(9)
tn3 = TreeNode.new(20)
tn4 = TreeNode.new(15)
tn5 = TreeNode.new(7)
tn1.left = tn2
tn2.right = tn3
tn3.left = tn4
tn3.right = tn5

def max_depth(root)
    if root
        return [max_depth(root.left),max_depth(root.right)].max + 1
    else
        return 0
    end        
end    

p max_depth(tn1)