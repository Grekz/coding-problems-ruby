# @author grekz
class E0931_MinimumFallingPathSum
    # @param {Integer[][]} a
    # @return {Integer}
    def min_falling_path_sum(a)
        n = a.size
        (n-2).downto(0).each { |i|
            n.times{ |j|
                b = a[i+1][j]
                b = [b, a[i+1][j-1]].min if j > 0
                b = [b, a[i+1][j+1]].min if j+1 < n
                a[i][j] += b            
            }
        }
        res = 2147483647
        a[0].each{ |x| res = [res, x].min }
        return res
    end
end