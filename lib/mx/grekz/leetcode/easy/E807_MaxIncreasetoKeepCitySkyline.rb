# @author grekz
class E807_MaxIncreasetoKeepCitySkyline
    # @param {Integer[][]} grid
    # @return {Integer}
    def max_increase_keeping_skyline(grid)
        n, m, res = grid.size, grid[0].size, 0
        r, c = [0] * n, [0] * m
        for i in 0...n 
            for j in 0...m 
                r[i] = grid[i][j] if r[i] < grid[i][j]
                c[j] = grid[i][j] if c[j] < grid[i][j]
            end
        end
        
        for i in 0...n 
            for j in 0...m
                res += [c[j], r[i]].min - grid[i][j]
            end
        end
        res
    end
end