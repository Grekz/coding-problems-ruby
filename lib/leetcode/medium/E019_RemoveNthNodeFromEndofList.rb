class E019_RemoveNthNodeFromEndofList
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end
    
    # @param {ListNode} head
    # @param {Integer} n
    # @return {ListNode}
    def remove_nth_from_end(head, n)
        if(head == nil or n < 1)
            return head
        end
        size = 0
        walk = head
        while(walk.next != nil)
            size+=1
            walk = walk.next
        end
        index = size - (n - 1)
        if(index < 1)
            head = head.next
            return head
        end
        walk = head
        i = 0
        while(walk.next != nil)
            i+=1
            if(i == index)
                walk.next = walk.next.next
                break 
            end
            walk = walk.next
        end
        return head
    end
end