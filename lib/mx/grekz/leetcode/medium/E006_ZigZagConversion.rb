# https://leetcode.com/problems/zigzag-conversion
class E006_ZigZagConversion
    # @param {String} s
    # @param {Integer} num_rows
    # @return {String}
    def convert(s, num_rows)
        return s if num_rows < 2 || s.size <= num_rows
        i = dir = 0
        res = [""] * num_rows
        s.chars.each{ |x|
            res[i] += x
            if i == 0
                dir = 1
            elsif i == num_rows - 1
                dir = -1
            end
            i += dir
        }
        return res.join('')
    end
end