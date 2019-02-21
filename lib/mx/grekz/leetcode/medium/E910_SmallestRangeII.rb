# @author grekz
class E910_SmallestRangeII
    # @param {Integer[]} a
    # @param {Integer} k
    # @return {Integer}
    def smallest_range_ii(a, k)
        a.sort!
        n = a.size - 1
        res = a[n] - a[0]
        n.times{ |i| 
            x, b = a[i], a[i+1]
            h = [a[n] - k, x + k].max
            l = [a[0] + k, b - k].min
            res = [res, h - l].min   
        }
        return res
    end
end