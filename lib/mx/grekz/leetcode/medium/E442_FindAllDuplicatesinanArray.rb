# @author grekz
class E442_FindAllDuplicatesinanArray
    # @param {Integer[]} nums
    # @return {Integer[]}
    def find_duplicates(nums)
        res = []
        nums.size.times{ 
            |i| 
            cur = nums[i].abs - 1
            res << cur + 1 if nums[cur] < 0
            nums[cur] = -nums[cur]
        }
        res
    end
end