# @author grekz
class E1012_ComplementofBase10Integer
    # @param {Integer} n
    # @return {Integer}
    def bitwise_complement(n)
        a = 1
        a = a * 2 + 1 while ( a < n )
        return a - n
    end
end