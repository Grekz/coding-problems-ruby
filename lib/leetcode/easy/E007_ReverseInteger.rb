# https://leetcode.com/problems/reverse-integer/description/
class E007_ReverseInteger
    # @param {Integer} x
    # @return {Integer}
    def reverse(x)
        s = x < 0 ? -1 : 1
        r = (s * x).to_s.reverse.to_i
        return r < 2**31 ? r * s : 0
    end
end