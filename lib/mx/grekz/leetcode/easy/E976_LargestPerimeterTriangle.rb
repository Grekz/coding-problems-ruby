# @author grekz
class E976_LargestPerimeterTriangle
    # @param {Integer[]} a
    # @return {Integer}
    def largest_perimeter(a)
        a.sort! {|x,y| y-x}
        (a.size - 2).times{ |i| return a[i] + a[i+1] + a[i+2] if a[i] < a[i + 1] + a[i + 2] }
        return 0
    end
end