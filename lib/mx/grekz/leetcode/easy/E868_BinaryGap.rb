# @author grekz
class E868_BinaryGap
    # @param {Integer} n
    # @return {Integer}
    def binary_gap(n)
        res, l = 0,-1
        32.times{ 
            |i| 
            if ( ( n >> i ) & 1 ) > 0 
                res = [res, i - l].max if l >= 0
                l = i
            end
        }
        return res
    end
end