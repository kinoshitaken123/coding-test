# 連結リストの先頭を指定して、リストの末尾からn番目のノードを削除し、その先頭を返します。
# Input: head = [1,2,3,4,5], n = 2
# Output: [1,2,3,5]

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
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(0)
  dummy.next = head
  len = 0
  node = head
  while node
    len += 1
    node = node.next
  end
  len -= n
  node = dummy
  while len > 0
    len -= 1
    node = node.next
  end
  node.next = node.next.next
  return dummy.next
end

require 'minitest/autorun'

class RemoveNthNodeFromEndOfListTest < Minitest::Test
  def test_remove_nth_from_end1
    ln1 = ListNode.new(1)
    ln2 = ListNode.new(2)
    ln3 = ListNode.new(3)
    ln4 = ListNode.new(4)
    ln5 = ListNode.new(5)
    ln1.next = ln2
    ln2.next = ln3
    ln3.next = ln4
    ln4.next = ln5
    ln1res = ListNode.new(1)
    ln2res = ListNode.new(2)
    ln3res = ListNode.new(3)
    ln5res = ListNode.new(5)
    ln1res.next = ln2res
    ln2res.next = ln3res
    ln3res.next = ln5res
    assert ln1res == remove_nth_from_end(ln1, 2)
  end
  def test_remove_nth_from_end2
    ln1 = ListNode.new(1)
    assert_nil remove_nth_from_end(ln1, 1)
  end
  def test_remove_nth_from_end3
    ln1 = ListNode.new(1)
    ln2 = ListNode.new(2)
    ln1.next = ln2
    ln1res = ListNode.new(1)
    assert_equal ln1res, remove_nth_from_end(ln1, 1)
  end
end
# 連結リストの先頭を指定して、リストの末尾からn番目のノードを削除し、その先頭を返します。
# Input: head = [1,2,3,4,5], n = 2
# Output: [1,2,3,5]

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
  # @param {Integer} n
  # @return {ListNode}
  def remove_nth_from_end(head, n)
    dummy = ListNode.new(0)
    dummy.next = head
    len = 0
    node = head
    while node
      len += 1
      node = node.next
    end
    len -= n
    node = dummy
    while len > 0
      len -= 1
      node = node.next
    end
    node.next = node.next.next
    return dummy.next
  end
  
  require 'minitest/autorun'
  
  class RemoveNthNodeFromEndOfListTest < Minitest::Test
    def test_remove_nth_from_end1
      ln1 = ListNode.new(1)
      ln2 = ListNode.new(2)
      ln3 = ListNode.new(3)
      ln4 = ListNode.new(4)
      ln5 = ListNode.new(5)
      ln1.next = ln2
      ln2.next = ln3
      ln3.next = ln4
      ln4.next = ln5
      ln1res = ListNode.new(1)
      ln2res = ListNode.new(2)
      ln3res = ListNode.new(3)
      ln5res = ListNode.new(5)
      ln1res.next = ln2res
      ln2res.next = ln3res
      ln3res.next = ln5res
      assert ln1res == remove_nth_from_end(ln1, 2)
    end
    def test_remove_nth_from_end2
      ln1 = ListNode.new(1)
      assert_nil remove_nth_from_end(ln1, 1)
    end
    def test_remove_nth_from_end3
      ln1 = ListNode.new(1)
      ln2 = ListNode.new(2)
      ln1.next = ln2
      ln1res = ListNode.new(1)
      assert_equal ln1res, remove_nth_from_end(ln1, 1)
    end
  end
  