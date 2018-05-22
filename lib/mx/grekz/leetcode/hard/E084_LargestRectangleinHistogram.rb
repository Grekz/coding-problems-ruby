# @author grekz
class E084_LargestRectangleinHistogram
    # @param {Integer[]} heights
    # @return {Integer}
    def largest_rectangle_area(heights)
        res = 0
        s = [-1]
        heights << 0
        heights.each_with_index{
            |e,i|
            while s.size > 0 and e < heights[s[-1]]
                h = heights[s.pop]
                w = i - s[-1] - 1
                res = [res, h*w].max
            end
            s << i
        }
        
        res
    end
end