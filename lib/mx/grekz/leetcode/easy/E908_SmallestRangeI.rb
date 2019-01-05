# @author grekz
class E908_SmallestRangeI
    # @param {Integer[]} a
    # @param {Integer} k
    # @return {Integer}
    def smallest_range_i(a, k)
        min, max = a.minmax
        [0, max - min - 2 * k].max
    end
end