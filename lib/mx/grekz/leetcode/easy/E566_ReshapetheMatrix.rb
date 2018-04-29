# @author grekz
class E566_ReshapetheMatrix
    # @param {Integer[][]} nums
    # @param {Integer} r
    # @param {Integer} c
    # @return {Integer[][]}
    def matrix_reshape(nums, r, c)
        m = nums.size
        n = nums[0].size
        return nums if m * n != r * c
        res = Array.new(r) { Array.new(c) }
        i = 0
        nums.each{
            |curArr|
            curArr.each{
                |cur|
                res[i/c][i%c] = cur
                i += 1
            }
        }
        res
    end
end