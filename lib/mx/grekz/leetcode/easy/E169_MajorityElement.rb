class E169_MajorityElement
    # @param {Integer[]} nums
    # @return {Integer}
    def majority_element(nums)
        return -1 if nums.size < 1 
        return nums[0] if nums.size < 3
        res = count = 0
        nums.each {
            |x|
            res = x if count == 0
            if res == x
                count += 1
            else
                count -= 1
            end
        }
        res
    end
end