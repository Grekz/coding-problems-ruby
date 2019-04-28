# @author grekz
class E0946_ValidateStackSequences
    # @param {Integer[]} pushed
    # @param {Integer[]} popped
    # @return {Boolean}
    def validate_stack_sequences(pushed, popped)
        return false if pushed.size != popped.size
        n, j, stack = pushed.size, 0, []
        pushed.each{
            |x|
            stack << x
            while not stack.empty? and j < n and stack[-1] == popped[j] 
                j+=1
                stack.pop
            end
        }
        return j == n
    end
end