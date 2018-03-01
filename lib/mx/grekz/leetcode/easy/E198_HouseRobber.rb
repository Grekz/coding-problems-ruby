class E198_HouseRobber
    # @param {Integer[]} nums
    # @return {Integer}
    def rob(nums)
        a = b = 0
        nums.size.times{
            |i|
            if i % 2 == 0
                a = [a+nums[i],b].max
            else
                b = [a,b+nums[i]].max
            end
        }
        [a,b].max
    end
end