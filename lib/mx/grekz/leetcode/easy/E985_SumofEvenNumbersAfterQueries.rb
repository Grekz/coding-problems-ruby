# @author grekz
class E985_SumofEvenNumbersAfterQueries
    # @param {Integer[]} a
    # @param {Integer[][]} queries
    # @return {Integer[]}
    def sum_even_after_queries(a, queries)
        cur, res = 0, []
        a.each { |x| cur += (x & 1) == 0 ? x : 0 }
        queries.each { |x| 
            val, idx = x[0], x[1]
            cur -= a[idx] if ( (a[idx] & 1) == 0 )
            a[idx] += val
            cur += a[idx] if ( (a[idx] & 1) == 0 )
            res << cur
        }
        return res
    end
end