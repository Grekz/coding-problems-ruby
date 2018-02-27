class E191_Numberof1Bits
    # @param {Integer} n, a positive integer
    # @return {Integer}
    def hamming_weight(n)
        res = 0
        (
            res += n & 1
            n >>=1
        )while(n!=0)
        res
    end
end