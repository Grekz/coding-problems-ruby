# @author grekz
class E1017_ConverttoBase2
    # @param {Integer} n
    # @return {String}
    def base_neg2(n)
        res = ""
        while n != 0
            res = ( n & 1 ).to_s + res
            n = -( n >> 1 )
        end
        return res if res.size > 0
        return "0"
    end
end