class E023_MergekSortedLists
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end
    
    # @param {ListNode[]} lists
    # @return {ListNode}
    def merge_k_lists(list)
        def merge(lists, ini, las)
            return nil if ( ini > las )
            return lists[ini] if ( ini == las )
            mid = ( ini + las ) / 2
            a = merge(lists, ini, mid)
            b = merge(lists, mid+1, las)
            tmp = ListNode.new(-1)
            cur = tmp
            while ( a != nil and b != nil )
                if ( a.val < b.val )
                    cur.next = a
                    a = a.next
                else
                    cur.next = b
                    b = b.next   
                end            
                cur = cur.next
            end
            cur.next = a != nil ? a : b
            return tmp.next
        end
        return merge(list, 0, list.size - 1)
    end
end