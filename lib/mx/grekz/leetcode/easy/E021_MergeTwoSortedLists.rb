class E021_MergeTwoSortedLists
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end
    
    # @param {ListNode} l1
    # @param {ListNode} l2
    # @return {ListNode}
    def merge_two_lists(l1, l2)
        return l2 if( l1 == nil ) 
        return l1 if( l2 == nil )
        temp = ListNode.new(-1)
        walk = temp
        while(l1 != nil && l2 != nil)
            if(l1.val < l2.val)
                walk.next = l1
                l1 = l1.next
            else
                walk.next = l2
                l2 = l2.next
            end
            walk = walk.next
        end
        walk.next = l2 if(l1 == nil) 
        walk.next = l1 if(l2 == nil)
        return temp.next
    end
end