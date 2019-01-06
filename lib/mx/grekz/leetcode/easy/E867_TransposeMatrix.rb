# @author grekz
class E867_TransposeMatrix
    # @param {Integer[][]} a
    # @return {Integer[][]}
    def transpose(a)
        n, m = a.size, a.first.size
        res = []
        m.times{ |i| 
            res << []
            n.times { |j| 
                res[i] << a[j][i] 
            } 
        }
        res
    end
end