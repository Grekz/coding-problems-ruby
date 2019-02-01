# @author grekz
class E982_TripleswithBitwiseANDEqualToZero
    # @param {Integer[]} a
    # @return {Integer}
    def count_triplets(a)
        res, tmp = 0, {}
        tmp.default = 0
        a.each{ |i| a.each{ |j| tmp[j&i] += 1 } }
        tmp.each{ |i,k| a.each{ |j| res += k if (j&i) == 0 } }
        res
    end
end