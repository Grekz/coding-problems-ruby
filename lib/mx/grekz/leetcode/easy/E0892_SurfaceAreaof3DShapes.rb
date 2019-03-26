# @author grekz
class E0892_SurfaceAreaof3DShapes
    # @param {Integer[][]} grid
    # @return {Integer}
    def surface_area(grid)
        n, ans = grid.size, 0
        n.times{ |i| 
            n.times{ |j| 
                v = grid[i][j]
                ans += 4 * v + 2 if ( v > 0 )
                ans -= [v, grid[i-1][j]].min * 2 if ( i > 0 ) 
                ans -= [v, grid[i][j-1]].min * 2 if ( j > 0 )
            }    
        }
        return ans
    end
end