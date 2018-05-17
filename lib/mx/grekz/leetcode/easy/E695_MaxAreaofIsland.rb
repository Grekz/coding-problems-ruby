# @author grekz
class E695_MaxAreaofIsland
    # @param {Integer[][]} grid
    # @return {Integer}
    def max_area_of_island(grid)
        ma = 0
        @n = grid.size
        @m = grid[0].size
        @grid = grid
        def doit(x,y)
            return 0 if x < 0 or y < 0 or x >= @n or y >= @m or @grid[x][y] == 0
            @grid[x][y] = 0
            1 + doit(x-1,y) + doit(x+1,y) + doit(x,y-1) + doit(x,y+1)
        end
        @n.times { |i| @m.times{ |j| ma = [ma, doit(i, j)].max if @grid[i][j] == 1 } }
        ma
    end
end