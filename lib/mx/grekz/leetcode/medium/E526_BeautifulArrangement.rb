# @author grekz
class E526_BeautifulArrangement
    # @param {Integer} n
    # @return {Integer}
    def count_arrangement(n)
        permutate(n, 1, 0, [false] * (n+1))
    end
    def permutate(n, pos, count, v)
        return count + 1 if pos > n
        n.times{
            |i| 
            i = i+1
            if not v[i] and ( i % pos == 0 || pos % i == 0)
                v[i] = true
                count = permutate(n, pos + 1, count, v)
                v[i] = false
            end
        }
        count
    end
end