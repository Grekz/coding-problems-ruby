# @author grekz
class E665_NondecreasingArray
    # @param {Integer[]} nums
    # @return {Boolean}
    def check_possibility(nums)
        n = nums.size - 1
        exists = false
        n.times{
            |i|
            if nums[i] > nums[i+1]
                return false if exists
                exists = true
                nums[i+1] = nums[i] if i > 0 && nums[i+1] < nums[i-1]
            end
        }
        true
    end
end