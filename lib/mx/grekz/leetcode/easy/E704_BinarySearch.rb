# @author grekz
class E704_BinarySearch
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer}
    def search(nums, target)
        b_search(nums, target, 0, nums.size - 1)
    end
    def b_search(nums, target, ini, en)
        return -1 if ini > en
        mid = ini + (en - ini) / 2
        return mid if nums[mid] == target
        return b_search(nums, target, ini, mid - 1) if nums[mid] > target
        b_search(nums, target, mid + 1, en)
    end
end