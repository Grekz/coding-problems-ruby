# @author grekz
class E031_NextPermutation
    # @param {Integer[]} nums
    # @return {Void} Do not return anything, modify nums in-place instead.
    def next_permutation(nums)
        n = nums.size - 1
        i, j = n -1, n
        i -= 1 while i >= 0 and nums[i] >= nums[i+1]
        if i >= 0
            j -= 1 while nums[j] <= nums[i]
            nums[i], nums[j] = nums[j], nums[i]
        end
        i += 1
        while i < n 
            nums[i], nums[n] = nums[n], nums[i]
            n -= 1
            i += 1
        end
    end
end