# @author grekz
class E162_FindPeakElement
    # @param {Integer[]} nums
    # @return {Integer}
    def find_peak_element(nums)
        l, h = 0, nums.size - 1
        while l < h
            m = ( l + h ) / 2
            if nums[m] < nums[m + 1] 
                l = m + 1
            else
                h = m
            end
        end
        l
    end
end