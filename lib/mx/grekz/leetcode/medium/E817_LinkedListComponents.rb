# @author grekz
class E817_LinkedListComponents
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val)
    #         @val = val
    #         @next = nil
    #     end
    # end

    # @param {ListNode} head
    # @param {Integer[]} g
    # @return {Integer}
    def num_components(head, g)
        s, res = g.to_set, 0
        while head != nil
            res += 1 if s.include?(head.val) and ( head.next == nil or not s.include?(head.next.val) )
            head = head.next
        end
        res
    end
end