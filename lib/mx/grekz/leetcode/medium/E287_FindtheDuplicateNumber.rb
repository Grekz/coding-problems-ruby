# @author grekz
class E287_FindtheDuplicateNumber
    # @param {Integer[]} nums
    # @return {Integer}
    def find_duplicate(nums)
        n = nums.size
        return -1 if n < 2
        n.times{ 
            |i| 
            cur = nums[i].abs - 1
            return cur + 1 if nums[cur] < 0
            nums[cur] = -nums[cur]
        }
        return -1
    end
end