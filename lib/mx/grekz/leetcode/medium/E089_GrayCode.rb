# @author grekz
class E089_GrayCode
    # @param {Integer} n
    # @return {Integer[]}
    def gray_code(n)
        res = []
        (1<<n).times{ |i| res << (i ^ i >> 1) }
        res
    end
end