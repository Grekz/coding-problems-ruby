# @author grekz
class E328_OddEvenLinkedList
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
    def odd_even_list(head)
        if head and head.next and head.next.next
            od, ev, evHe = head, head.next, head.next
            while ev and ev.next
                od.next = od.next.next
                ev.next = ev.next.next
                od = od.next
                ev = ev.next
            end
            od.next = evHe
        end
        head
    end
end