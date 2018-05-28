# @author grekz
class E334_IncreasingTripletSubsequence
    # @param {Integer[]} nums
    # @return {Boolean}
    def increasing_triplet(nums)
        a, b = 2147483647, 2147483647
        nums.each{
            |x|
            if x <= a
                a = x
            elsif x <= b
                b = x
            else
                return true
            end
        }
        return false
    end
end