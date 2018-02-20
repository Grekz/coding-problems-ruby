class E119_PascalsTriangleII
    # @param {Integer} row_index
    # @return {Integer[]}
    def get_row(row_index)
        res = [1]
        row_index.times{
            |i|
            res.unshift(1)
            (1...(res.size-1)).each{
                |j|
                res[j] = res[j] + res[j+1]
            }
        }
        res
    end
end