# @author grekz
class E454_4SumII
    # @param {Integer[]} a
    # @param {Integer[]} b
    # @param {Integer[]} c
    # @param {Integer[]} d
    # @return {Integer}
    def four_sum_count(a, b, c, d)
        m = {}
        m.default = 0
        res = 0
        a.each{|x|b.each{|y| m[x+y] += 1 }}
        c.each{|x|d.each{|y| res += m[-(x+y)] }}
        res
    end
end