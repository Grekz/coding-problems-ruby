# @author grekz
class E922_SortArrayByParityII
    # @param {Integer[]} a
    # @return {Integer[]}
    def sort_array_by_parity_ii(a)
        i, j, res = 0, 1, Array.new(a.size, 0)
        a.each{ |x| 
            if (x & 1) == 0 
                res[i] = x
                i += 2
            else
                res[j] = x
                j += 2
            end
        }
        res
    end
end