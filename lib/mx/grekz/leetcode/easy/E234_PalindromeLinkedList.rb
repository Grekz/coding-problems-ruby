# @author grekz
class E234_PalindromeLinkedList
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end
    
    # @param {ListNode} head
    # @return {Boolean}
    def is_palindrome(head)
        return true if(not head or not head.next) 
        return head.next.val == head.val if(not head.next.next)
        fast = slow = head
        rev = nil
        while ( fast and fast.next )
            fast = fast.next.next
            tmp = rev
            rev = slow
            slow = slow.next
            rev.next = tmp
        end
        if ( fast ) 
            slow = slow.next
        end
        while ( rev and rev.val == slow.val ) 
            rev, slow = rev.next, slow.next
        end
        return rev == nil
    end
end