# @author grekz
class E0647_PalindromicSubstrings
    # @param {String} s
    # @return {Integer}
    def count_substrings(s)
        n, res = s.size, 0
        m = 2 * n 
        m.times { |i|
            l = i / 2
            r = l + i % 2
            while l >= 0 and r < n and s[l] == s[r] 
                l-=1
                r+=1
                res+=1
            end
        }
        return res
    end
end