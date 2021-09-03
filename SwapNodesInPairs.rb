# 連結リストを指定して、隣接する2つのノードごとにスワップし、そのヘッドを返します。
# リストのノードの値を変更せずに問題を解決する必要があります（つまり、ノード自体のみを変更できます）。
# Input: head = [1,2,3,4]
# Output: [2,1,4,3]

# Definition for singly-linked list.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
    end
    def ==(node)
      return @val == node.val
    end
  end
  # @param {ListNode} head
  # @return {ListNode}
  def swap_pairs(head)
    dummy = ListNode.new(0)
    dummy.next = head
    node = dummy
    while node.next && node.next.next
      # Input: head = [1,2,3,4]
      # Output: [2,1,4,3]   

      temp1 = node.next #1
      temp2 = node.next.next #2
      temp3 = node.next.next.next #3
      temp1.next = temp3 #3
      temp2.next = temp1
      node.next = temp2
      node = temp1
    end
    return dummy.next
  end
  

require 'minitest/autorun'

class SwapNodesInPairsTest < Minitest::Test
  def test_swap_pairs1
    ln1 = ListNode.new(1)
    ln2 = ListNode.new(2)
    ln3 = ListNode.new(3)
    ln4 = ListNode.new(4)
    ln1.next = ln2
    ln2.next = ln3
    ln3.next = ln4
    ln1res = ListNode.new(2)
    ln2res = ListNode.new(1)
    ln3res = ListNode.new(4)
    ln4res = ListNode.new(3)
    ln1res.next = ln2res
    ln2res.next = ln3res
    ln3res.next = ln4res
    assert ln1res == swap_pairs(ln1)
  end
  def test_swap_pairs2
    assert_nil swap_pairs(nil)
  end
  def test_swap_pairs3
    ln1 = ListNode.new(1)
    ln1res = ListNode.new(1)
    assert ln1res == swap_pairs(ln1)
  end
end
