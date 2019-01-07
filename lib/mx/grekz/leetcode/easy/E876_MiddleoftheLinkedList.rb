# @author grekz
class E876_MiddleoftheLinkedList
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end

    # @param {ListNode} head
    # @return {ListNode}
    def middle_node(head)
        getSize = lambda { |node, n | return node == nil ? n : getSize[node.next, n + 1] }
        getKth = lambda { |node, k, n | return n == k ? node : getKth[node.next, k, n + 1] }
        getKth[head, getSize[head,0] / 2, 0]
    end
end