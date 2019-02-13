# @author grekz
class E045_JumpGameII
    # @param {Integer[]} nums
    # @return {Integer}
    def jump(nums)
        count, e, f, n = 0, 0, 0, nums.size - 1
        n.times{ 
            |i|
            f = [f, i + nums[i]].max
            if i == e
                count += 1
                e = f
            end
        }
        count
    end
end