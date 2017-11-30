# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
# @author grekz
class E003_LongestSubstringWithoutRepeatingCharacters
    # @param {String} s
    # @return {Integer}
    def length_of_longest_substring(s)
        res = prev = i = 0
        dict = {}
        s.chars.each{ |x|
            (
                res = [i - prev, res].max
                prev = dict[x] + 1
            ) if dict.key?(x) and dict[x] >= prev
            dict[x] = i
            i += 1
        }
        [i - prev, res].max
    end
end