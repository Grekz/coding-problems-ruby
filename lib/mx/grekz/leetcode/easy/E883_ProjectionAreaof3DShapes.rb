# @author grekz
class E883_ProjectionAreaof3DShapes
    # @param {Integer[][]} grid
    # @return {Integer}
    def projection_area(grid)
        n, res = grid.size, 0
        n.times{ |i| 
            col, row = 0, 0
            n.times{ |j|
                res += 1 if grid[i][j] > 0
                row = [grid[i][j], row].max
                col = [grid[j][i], col].max
            }
            res += col + row
        }
        res
    end
end