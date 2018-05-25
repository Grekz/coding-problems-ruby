# @author grekz
class E062_UniquePaths
    # @param {Integer} m
    # @param {Integer} n
    # @return {Integer}
    def unique_paths(m, n)
        res = 1
        (m-1).times { |i| res = res * ( i + n ) / ( i + 1 )}
        res
    end
end