# @author grekz
class E717_1bitand2bitCharacters
    # @param {Integer[]} bits
    # @return {Boolean}
    def is_one_bit_character(bits)
        n = bits.size - 1
        return true if n < 1
        (n-1).downto(-1).each{|i| return (n - i).odd? if bits[i] == 0 }
        (n -1).odd?
    end
end