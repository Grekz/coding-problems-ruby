# @author grekz
class E733_FloodFill
    # @param {Integer[][]} image
    # @param {Integer} sr
    # @param {Integer} sc
    # @param {Integer} new_color
    # @return {Integer[][]}
    def flood_fill(image, sr, sc, new_color)
        @image = image
        @d = new_color
        @n, @m, @c = @image.size, @image[0].size, @image[sr][sc]
        def dfs(a,b)
            return if a < 0 or b < 0 or a >= @n or b >= @m or @image[a][b] != @c 
            @image[a][b] = @d
            dfs(a,b+1)
            dfs(a,b-1)
            dfs(a+1,b)
            dfs(a-1,b)
        end
        dfs(sr,sc) if @c != new_color 
        return @image
    end
end