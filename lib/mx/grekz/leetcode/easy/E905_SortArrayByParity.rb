# @author grekz
class E905_SortArrayByParity
    # @param {Integer[]} a
    # @return {Integer[]}
    def sort_array_by_parity(a)
        i, j = 0, a.size - 1
        while i < j
            cur = a[i]
            if cur % 2 == 1
                a[i] = a[j]
                a[j] = cur
                j -= 1
            else
                i += 1
            end
        end
        a
    end
end