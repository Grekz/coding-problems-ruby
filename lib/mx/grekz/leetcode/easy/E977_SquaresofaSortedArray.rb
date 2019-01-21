# @author grekz
class E977_SquaresofaSortedArray
    # @param {Integer[]} a
    # @return {Integer[]}
    def sorted_squares(a)
        n = a.size
        res = Array.new(n, 0)
        n.times { |i| a[i] *= a[i] }
        i,j,k = 0, n-1, n-1
        while i <= j
            if a[i] < a[j]
                res[k] = a[j]
                j -= 1
            else
                res[k] = a[i]
                i += 1
            end
            k -= 1
        end
        res
    end
end