# @author grekz
class E080_RemoveDuplicatesfromSortedArrayII
    # @param {Integer[]} nums
    # @return {Integer}
    def remove_duplicates(nums)
        return nums.size if nums.size < 3
        i = 0 
        nums.each { 
            | n | 
            if i < 2  or nums[i - 2] < n
                nums[i] = n
                i += 1
            end
        }
        return i
    end
end