# @author grekz
class E215_KthLargestElementinanArray
    # @param {Integer[]} nums
    # @param {Integer} k
    # @return {Integer}
    def find_kth_largest(nums, k)
        nums.sort[-k]
    end
end