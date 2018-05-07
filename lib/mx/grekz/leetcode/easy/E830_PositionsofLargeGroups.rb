# @author grekz
class E830_PositionsofLargeGroups
    # @param {String} s
    # @return {Integer[][]}
    def large_group_positions(s)
        res = []
        s += "|"
        ps = 0
        n = s.size
        n.times{
            |i|
            if s[i] != s[ps]
                res += [[ps, i - 1]] if i - ps > 2
                ps = i
            end
        }
        res
    end
end