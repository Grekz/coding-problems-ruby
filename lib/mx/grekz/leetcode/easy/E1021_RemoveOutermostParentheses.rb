# @author grekz
class E1021_RemoveOutermostParentheses
    # @param {String} s
    # @return {String}
    def remove_outer_parentheses(s)
        c, res = 0, ''
        s.each_char{ |x| 
            if ( x == '(' )
                res += x if c > 0
                c+=1
            elsif ( x == ')' )
                res += x if c > 1
                c-=1
            end
        }    
        return res
    end
end