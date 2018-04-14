# @author grekz
class E463_IslandPerimeter
    # @param {Integer[][]} grid
    # @return {Integer}
    def island_perimeter(grid)
        la = grid.size
        lb = grid[0].size
        isla = 0
        neig = 0
        la.times {
            |i|
            lb.times{
                |j|
                if grid[i][j] == 1
                    isla+=1
                    neig+=1 if i < la -1 and grid[i+1][j] == 1
                    neig+=1 if j < lb -1 and grid[i][j+1] == 1
                end
            }
        }
        isla * 4 - neig * 2
    end
end