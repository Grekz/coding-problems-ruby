class E016_3SumClosest
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer}
    def three_sum_closest(nums, target)
        nums.sort!
        len = nums.size - 1
        res = nums[0] + nums[1] + nums[2]
        (0...(len-1)).each{ 
            |i|
            cur = nums[i]
            next if i > 0 && cur == nums[i-1]
            l = i + 1
            h = len
            while l < h
                tmp = cur + nums[l] + nums[h]
                return tmp if tmp == target
                res = tmp if (tmp-target).abs < (res-target).abs
                if tmp < target
                    l += 1
                else
                    h -= 1
                end
            end
        }
        res
    end
end