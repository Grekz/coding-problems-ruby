# @author grekz
class E598_RangeAdditionII
    # @param {Integer} m
    # @param {Integer} n
    # @param {Integer[][]} ops
    # @return {Integer}
    def max_count(m, n, ops)
        a, b = m, n
        ops.each{ |x| a = [a, x[0]].min; b = [b, x[1]].min }
        a * b
    end
end