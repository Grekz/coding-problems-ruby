# @author grekz
class E693_BinaryNumberwithAlternatingBits
    # @param {Integer} n
    # @return {Boolean}
    def has_alternating_bits(n)
        b = n.to_s 2
        not b.include?('00') and not b.include?('11')
    end
end