# @author grekz
class E075_SortColors
    # @param {Integer[]} nums
    # @return {Void} Do not return anything, modify nums in-place instead.
    def sort_colors(nums)
        i, j, k = 0, 0, nums.size - 1
        while i <= k
            if nums[i] == 0 
                swap(i, j, nums)
                j += 1
            elsif nums[i] == 2
                swap(i, k, nums)
                k -= 1
                i -= 1
            end
            i += 1
        end
    end
    def swap(a, b, n)
        t = n[a]
        n[a] = n[b]
        n[b] = t
    end
end