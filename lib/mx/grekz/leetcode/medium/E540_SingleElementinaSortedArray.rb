# @author grekz
class E540_SingleElementinaSortedArray
    # @param {Integer[]} nums
    # @return {Integer}
    def single_non_duplicate(nums)
        i, j = 0, nums.size - 1
        while i < j
            mid = i + ( j - i ) / 2
            if nums[mid] == nums[mid ^ 1]
                i = mid + 1
            else
                j = mid
            end
        end
        return nums[i]
    end
end