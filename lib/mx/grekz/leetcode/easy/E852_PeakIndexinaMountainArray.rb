# @author grekz
class E852_PeakIndexinaMountainArray
    # @param {Integer[]} a
    # @return {Integer}
    def peak_index_in_mountain_array(a)
        res, m = 0, -2147483648
        a.each_with_index{
            |x,i|
            if m < x 
                m = x
                res = i
            end
        }
        res
    end
end