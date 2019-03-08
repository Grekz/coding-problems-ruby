# @author grekz
class E143_ReorderList
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end

    # @param {ListNode} head
    # @return {Void} Do not return anything, modify head in-place instead.
    def reorder_list(head)
        return if ( head == nil or head.next == nil)
        # // get to the middle, reverse second part, mix parts
        slow, fast = head, head
        while ( fast.next != nil and fast.next.next != nil )
            slow = slow.next
            fast = fast.next.next
        end
        fast = slow.next
        while (fast.next != nil) 
            cur = fast.next
            fast.next = cur.next
            cur.next = slow.next
            slow.next = cur
        end
        fast = slow.next
        cur = slow
        slow = head
        while ( slow != cur )
            cur.next = fast.next
            fast.next = slow.next
            slow.next = fast
            slow = fast.next
            fast = cur.next
        end
    end
end