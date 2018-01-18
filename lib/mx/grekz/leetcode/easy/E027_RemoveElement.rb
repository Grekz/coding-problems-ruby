class E027_RemoveElement
    # @param {Integer[]} nums
    # @param {Integer} val
    # @return {Integer}
    def remove_element(nums, val)
        count = 0
        nums.size.times{
            |i|
            if ( nums[i] != val )
                temp = nums[i]
                nums[i] = nums[count]
                nums[count] = temp
                count += 1
            end
        }
        return count
    end
end