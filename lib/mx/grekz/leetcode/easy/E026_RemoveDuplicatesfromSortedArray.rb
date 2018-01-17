class E026_RemoveDuplicatesfromSortedArray
    # @param {Integer[]} nums
    # @return {Integer}
    def remove_duplicates(nums)
        return 0 if ( nums.size < 1 )
        return 1 if ( nums.size == 1 )
        le = nums.size
        base = nums[0]
        count = 0
        cur = 1
        1.upto(le){
            |i|
            if ( base == nums[i] )
                count += 1
                nums[i] = -1
            else
                base = nums[i]
                nums[cur] = nums[i]
                cur += 1
            end
        }
        return le - count
    end
end