# 2つの負ではない整数を表す2つの空でない連結リストが与えられます。 
# 数字は逆の順序で格納され、各ノードには1つの数字が含まれます。 
# 2つの数値を加算し、その合計を連結リストとして返します。 
# 2つの数値には、数値0自体を除いて、先行ゼロが含まれていないと想定できます。
# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.

class ListNode
    attr_accessor :val,:next
    def initialize(val = 0 , _next = nil)
        @val  = val
        @next = _next
    end    
end    

def show_node(node)
   if node.next == nil
     return node.val.to_s
   else
     return node.val.to_s + "=>" + show_node(node.next)
   end  
end    

ln1 = ListNode.new(2)
ln2 = ListNode.new(4)
ln3 = ListNode.new(3)
ln4 = ListNode.new(5)
ln5 = ListNode.new(6)
ln6 = ListNode.new(4)
ln1.next = ln2
#ln2.next = ln3
ln4.next = ln5
ln5.next = ln6

def add_two_numbers(l1,l2)
    l3 = ListNode.new(0)
    result = l3
    carry  = 0
    while l1 && l2
        sum     = l1.val + l2.val + carry
        carry   = sum /10 #12だった場合、1に繰り上げるため
        l3.next = ListNode.new(sum % 10)
        l1 = l1.next
        l2 = l2.next
        l3 = l3.next
    end    
    if carry > 0
        l3.next = add_two_numbers(l1 || l2,ListNode.new(1))
    else
        l3.next = l1 || l2
    end    
    return result.next
end    

puts show_node(add_two_numbers(ln1,ln4))