# @author grekz
class E628_MaximumProductofThreeNumbers
    # @param {Integer[]} nums
    # @return {Integer}
    def maximum_product(nums)
        nums.sort!
        n = nums.size-1
        [nums[n] * nums[n-1] * nums[n-2], nums[0] * nums[1] * nums[n]].max  
    end
end