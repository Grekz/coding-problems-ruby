class E053_MaximumSubarray
    # @param {Integer[]} nums
    # @return {Integer}
    def max_sub_array(nums)
        cur = res = nums[0]
        (1...nums.size).each{
            |i|
            cur = [cur+nums[i], nums[i]].max
            res = [cur,res].max
        }
        return res
    end
end