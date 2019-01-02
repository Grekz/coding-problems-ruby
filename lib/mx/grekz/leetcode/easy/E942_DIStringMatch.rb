# @author grekz
class E942_DIStringMatch
    # @param {String} s
    # @return {Integer[]}
    def di_string_match(s)
        right, left, res = s.size, 0, []
        s.each_char{ |x|
            cur = left
            if x == "I"
                left += 1
            else
                cur = right
                right -= 1
            end
            res << cur
        }
        res << right
    end
end