class E083_RemoveDuplicatesfromSortedList
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
    def delete_duplicates(head)
        return head if (head == nil || head.next == nil )        
        walk = head
        while(walk.next != nil)
            if(walk.val == walk.next.val)
                walk.next = walk.next.next
            else
                walk = walk.next
            end
        end
        head
    end
end