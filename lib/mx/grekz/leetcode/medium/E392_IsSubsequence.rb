# @author grekz
class E392_IsSubsequence
    # @param {String} s
    # @param {String} t
    # @return {Boolean}
    def is_subsequence(s, t)
        idx = -1
        s.chars{ 
            |c| 
            idx = t.index(c, idx + 1) 
            return false if not idx
        }
        return true
    end
end