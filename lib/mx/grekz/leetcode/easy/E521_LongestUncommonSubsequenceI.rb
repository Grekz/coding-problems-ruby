# @author grekz
class E521_LongestUncommonSubsequenceI
    # @param {String} a
    # @param {String} b
    # @return {Integer}
    def find_lu_slength(a, b)
        return -1 if a == b
        [a.size, b.size].max
    end
end