class E020_ValidParentheses
    # @param {String} s
    # @return {Boolean}
    def is_valid(s)
        return true if s.size < 1
        return false if s.size < 2
        open = "({[" 
        close = ")}]"
        stack = []
        s.chars.each{ 
            |cur|
            if open.index(cur) != nil
                stack << cur
            elsif stack.size < 1 || open.index(stack.pop) != close.index(cur)
                return false
            end
        }
        return stack.size == 0
    end
end