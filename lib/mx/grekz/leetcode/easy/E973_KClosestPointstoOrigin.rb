# @author grekz
class E973_KClosestPointstoOrigin
    # @param {Integer[][]} points
    # @param {Integer} k
    # @return {Integer[][]}
    def k_closest(points, k)
        points.sort { |a,b| a[0]**2 + a[1]**2 - (b[0]**2 + b[1]**2)}[0, k]
    end
end