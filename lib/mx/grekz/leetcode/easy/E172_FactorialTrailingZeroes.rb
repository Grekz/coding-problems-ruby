class E172_FactorialTrailingZeroes
    # @param {Integer} n
    # @return {Integer}
    def trailing_zeroes(n)
        res = 0
        while ( n > 0 )
            n /= 5
            res += n
        end
        res
    end
end