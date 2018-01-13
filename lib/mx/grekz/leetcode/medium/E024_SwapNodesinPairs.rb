class E024_SwapNodesinPairs
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
    def swap_pairs(head)
        res = ListNode.new(0)
        res.next = head
        walk = res
        while ( walk.next != nil and walk.next.next != nil )
            a = walk.next
            b = walk.next.next
            a.next = b.next
            b.next = a
            walk.next = b
            walk = a
        end
        return res.next
    end
end