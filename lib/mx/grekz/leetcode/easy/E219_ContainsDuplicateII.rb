# @author grekz
class E219_ContainsDuplicateII
    # @param {Integer[]} nums
    # @param {Integer} k
    # @return {Boolean}
    def contains_nearby_duplicate(nums, k)
        return false if(k == 0 or nums == nil or nums.size < 2 )
        values = {}
        nums.each_with_index{
            |x, i|    
            return true if values[x] and (i - values[x] <= k  )
            values[x] = i
        }
        false
    end
end