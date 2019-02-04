# @author grekz
class E052_NQueensII
    # @param {Integer} n
    # @return {Integer}
    def total_n_queens(n)
        cols = [false] * n
        d1 = [false] * (2*n)
        d2 = [false] * (2*n)
        return bt(0, cols, d1, d2, n, 0)
    end
    def bt(row, cols, d1, d2, n, count)
        return count + 1 if row == n
        n.times { 
            |i|
            id1 = i - row + n
            id2 = i + row
            if not ( cols[i] or d1[id1] or d2[id2] )
                cols[i]=true
                d1[id1]=true
                d2[id2] = true
                count = bt(row + 1, cols, d1, d2, n, count)
                cols[i]=false
                d1[id1]=false
                d2[id2] = false
            end
        }
        return count
    end
end