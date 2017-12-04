# https://leetcode.com/problems/longest-palindromic-substring/description/
# @author grekz
class E005_LongestPalindromicSubstring
    # @param {String} s
    # @return {String}
    def longest_palindrome(s)
        t = ['$', '#']
        s.chars.each{
            |x|
            t << x << '#'
        }
        t << '%'
        p = [0] * t.size
        c = r = 0
        res = [0,0]
        1..(t.size-1).times{
            |i|
            p[i] = [r - i, p[2*c - i]].min if i < r
            p[i] += 1 while t[ i - ( 1 + p[i] ) ] == t[ i + ( 1 + p[i] ) ]
            if i + p[i] > r
                c = i
                r = i + p[i]
                res = [c, p[i]] if p[i] > res[1]
            end
        }
        en = (res[0] + res[1]) / 2
        st = (res[0] - res[1]) / 2
        s[st...en]
    end
end