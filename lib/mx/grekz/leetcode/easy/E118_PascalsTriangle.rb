class E118_PascalsTriangle
    # @param {Integer} num_rows
    # @return {Integer[][]}
    def generate(num_rows)
        return [] if num_rows == 0
        res = []
        cur = []
        (0...num_rows).each{
            |i|
            cur.unshift(1)
            (1...(cur.size-1)).each{
                |j|
                cur[j] = cur[j] + cur[j+1]
            }
            res << cur.dup
        }
        res
    end
end