# @author grekz
class E409_LongestPalindrome
    # @param {String} s
    # @return {Integer}
    def longest_palindrome(s)
        res = 0
        tmp = [false] * 58
        s.chars.each {
            |c|
            t = c.ord - 65
            res += 2 if ( tmp[t] )
            tmp[t] = !tmp[t]
        }
        res += 1 if ( res != s.size ) 
        res
    end
end