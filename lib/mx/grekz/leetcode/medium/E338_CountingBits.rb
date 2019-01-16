# @author grekz
class E338_CountingBits
    # @param {Integer} num
    # @return {Integer[]}
    def count_bits(num)
        res = Array.new(num+1,0)
        1.upto(num) {|i| res[i] = res[i & (i-1)] + 1 }
        res
    end
end