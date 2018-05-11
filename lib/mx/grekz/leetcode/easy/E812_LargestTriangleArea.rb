# @author grekz
class E812_LargestTriangleArea
    # @param {Integer[][]} points
    # @return {Float}
    def largest_triangle_area(points)
        res = 0.0
        points.each{ |i| points.each{ |j| points.each{ |k| 
            res = [res, 0.5 * (i[0] * j[1] + j[0] * k[1] + k[0] * i[1]- j[0] * i[1] - k[0] * j[1] - i[0] * k[1]).abs].max        
        } } }
        res
    end
end