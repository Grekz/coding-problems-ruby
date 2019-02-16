# @author grekz
class E413_ArithmeticSlices
    # @param {Integer[]} a
    # @return {Integer}
    def number_of_arithmetic_slices(a)
        tmp, res, n = 0, 0, a.size
        (2...n).each{ 
            |i| 
            if a[i] - a[i-1] == a[i-1] - a[i-2] 
                tmp += 1
                res += tmp
            else
                tmp = 0
            end
        }
        return res
    end
end