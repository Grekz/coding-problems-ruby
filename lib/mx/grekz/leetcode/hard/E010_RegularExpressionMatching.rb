# @author grekz
class E010_RegularExpressionMatching
    # @param {String} s
    # @param {String} p
    # @return {Boolean}
    def is_match(s, p)
        pn, tn = p.size, s.size
        dp = Array.new(tn+1){Array.new(pn+1){false}}
        dp[tn][pn] = true
        tn.downto(0).each{ 
            |i|
            (pn - 1).downto(0).each{
                |j|    
                fm = i < tn && ( s[i] == p[j] || p[j] == '.' )
                if j + 1 < pn && p[j+1] == '*'
                    dp[i][j] = dp[i][j+2] || fm && dp[i+1][j]
                else
                    dp[i][j] = fm && dp[i+1][j+1]
                end
            }
        }
        return dp[0][0]
    end
end