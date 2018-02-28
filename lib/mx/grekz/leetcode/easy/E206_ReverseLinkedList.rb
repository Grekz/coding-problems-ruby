class E206_ReverseLinkedList
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
    def reverse_list(head)
        cur = res = nil 
        while(head!=nil)
            cur=head
            head=head.next
            cur.next=res
            res=cur
        end
        res
    end
end