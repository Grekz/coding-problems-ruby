# @author grekz
class E921_MinimumAddtoMakeParenthesesValid
    # @param {String} s
    # @return {Integer}
    def min_add_to_make_valid(s)
        res, bal = 0, 0
        s.chars.each { 
            |x| 
            bal += x == '(' ? 1 : -1
            if bal == -1 
                bal += 1
                res += 1
            end
        }
        res + bal
    end
end