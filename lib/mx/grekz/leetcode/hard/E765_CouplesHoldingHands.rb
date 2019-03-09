# @author grekz
class E765_CouplesHoldingHands
    # @param {Integer[]} row
    # @return {Integer}
    def min_swaps_couples(row)
        n, res = row.size, 0
        pos = Array.new(n, 0)
        row.each_with_index{ |x, i| pos[x] = i }
        (0...n).step(2) { 
            |i|
            pair = row[i].to_i ^ 1
            if pair != row[i+1] then
                row[pos[pair]] = row[i + 1]
                pos[row[i+1]] = pos[pair]
                res += 1
            end
        }
        return res
    end
end