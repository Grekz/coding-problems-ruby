# @author grekz
class E371_SumofTwoIntegers
    # @param {Integer} a
    # @param {Integer} b
    # @return {Integer}
    def get_sum(a, b)
        tMAX = 0x7FFFFFFF
        mask = 0xFFFFFFFF
        while b != 0
            tmp = a
            a =  ( a ^ b ) & mask
            b = ((tmp & b) << 1) & mask
        end
        return a <= tMAX ? a : ~(a ^ mask)
    end
end