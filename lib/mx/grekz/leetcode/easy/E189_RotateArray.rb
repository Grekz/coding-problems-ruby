class E189_RotateArray
    # @param {Integer[]} nums
    # @param {Integer} k
    # @return {Void} Do not return anything, modify nums in-place instead.
    def rotate(nums, k)
        n = nums.size
        k %= n
        return if n == 0 or k == 0
        def reverse( nums, i, j )
            while i < j
                tmp = nums[i]
                nums[i] = nums[j]
                nums[j] = tmp
                i += 1
                j -= 1
            end
        end
        reverse( nums, 0, n-1 )
        reverse( nums, 0, k-1 )
        reverse( nums, k, n-1 )
    end
end