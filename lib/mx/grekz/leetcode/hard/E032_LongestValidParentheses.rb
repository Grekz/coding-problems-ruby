class E032_LongestValidParentheses
    # @param {String} s
    # @return {Integer}
    def longest_valid_parentheses(s)
        return 0 if (s == nil or s.size < 2)
        res = 0
        stack = []
        stack << -1
        s.size.times{ 
            |i|
            if (s[i] == '(')
                stack << i
            else
                stack.pop
                if (stack.any?)
                    res = [res, i - stack[stack.size-1]].max
                else
                    stack << i
                end
            end
        }
        return res
    end
end