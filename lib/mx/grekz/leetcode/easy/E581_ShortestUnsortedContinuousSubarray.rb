# @author grekz
class E581_ShortestUnsortedContinuousSubarray
    # @param {Integer[]} nums
    # @return {Integer}
    def find_unsorted_subarray(nums)
        n, mi, ma, ini, endi = nums.size - 1, 2147483647, -2147483648, -1, -2
        nums.each_with_index{ 
            | a, i|
            b = nums[n - i]
            ma = [a, ma].max
            mi = [b, mi].min
            endi = i if a < ma
            ini = n - i if b > mi
        }
        endi - ini + 1
    end
end