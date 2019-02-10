# @author grekz
class E201_BitwiseANDofNumbersRange
    # @param {Integer} m
    # @param {Integer} n
    # @return {Integer}
    def range_bitwise_and(m, n)
        n &= n-1 while m < n
        return n
    end
end