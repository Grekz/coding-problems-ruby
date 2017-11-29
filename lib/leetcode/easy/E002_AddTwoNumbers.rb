class E002_AddTwoNumbers
    # Definition for singly-linked list.
     class ListNode
         attr_accessor :val, :next
         def initialize(val)
             @val = val
             @next = nil
         end
     end
    
    # @param {ListNode} l1
    # @param {ListNode} l2
    # @return {ListNode}
    def add_two_numbers(l1, l2)
        head = res = ListNode.new 0
        carry = sum = 0
        while carry > 0 || !l1.nil? || !l2.nil?
            sum = carry
            ( 
                sum += l1.val
                l1 = l1.next
            ) if !l1.nil?
            ( 
                sum += l2.val
                l2 = l2.next
            ) if !l2.nil?
            if sum > 9
                sum %= 10
                carry = 1
            else
                carry = 0
            end
            res.next = ListNode.new sum
            res = res.next        
        end
        head.next
    end
end