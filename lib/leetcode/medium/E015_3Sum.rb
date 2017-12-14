module E015_3Sum
    # @param {Integer[]} nums
    # @return {Integer[][]}
    def three_sum(nums)
        nums.sort!
        len = nums.size
        res = []
        for i in 0..( len - 2 )
            cur = nums[i]
            break if cur > 0
            next if i > 0 && cur == nums[ i - 1 ]
            l = i + 1
            h = len - 1
            while l < h
                tmp = cur + nums[l] + nums[h]
                if tmp < 0
                    l += 1
                elsif tmp > 0
                    h -=1
                else
                    res << [cur, nums[l], nums[h]]
                    l += 1 while l < h && nums[l] == nums[l + 1]
                    h -= 1 while l < h && nums[h] == nums[h - 1]
                    h -= 1
                    l += 1
                end
            end
        end
        return res
    end
end