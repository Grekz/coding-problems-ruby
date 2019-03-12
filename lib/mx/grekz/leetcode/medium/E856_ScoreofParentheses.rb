# @author grekz
class E856_ScoreofParentheses
    # @param {String} s
    # @return {Integer}
    def score_of_parentheses(s)
        prev = bal = res = 0
        s.chars{ |c|
            if ( c == '(')
                bal+=1
            else
                bal-=1
                res += 1 << bal if ( prev == '(') 
            end
            prev = c
        }
        return res
    end
end