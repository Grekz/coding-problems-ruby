# @author grekz
class E944_DeleteColumnstoMakeSorted
    # @param {String[]} a
    # @return {Integer}
    def min_deletion_size(a)
        lenA = a.size - 1
        res = 0
        a[0].size.times { |i|
            lenA.times { |j|
                if a[j][i] > a[j+1][i]
                    res += 1
                    break
                end
            }
        }
        res
    end
end