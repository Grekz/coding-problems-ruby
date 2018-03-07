class E203_RemoveLinkedListElements
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end
    
    # @param {ListNode} head
    # @param {Integer} val
    # @return {ListNode}
    def remove_elements(head, val)
        return head if head == nil
        fh = ListNode.new(-1)
        fh.next = head
        cur = fh
        while cur.next != nil
            if cur.next.val == val
                cur.next = cur.next.next
            else
                cur = cur.next
            end
        end
        fh.next
    end
end