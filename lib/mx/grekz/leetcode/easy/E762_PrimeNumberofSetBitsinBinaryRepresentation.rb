# @author grekz
class E762_PrimeNumberofSetBitsinBinaryRepresentation
    # @param {Integer} l
    # @param {Integer} r
    # @return {Integer}
    def count_prime_set_bits(l, r)
        (l..r).sum { |i| 665772 >> i.digits(2).sum & 1 }
    end
end