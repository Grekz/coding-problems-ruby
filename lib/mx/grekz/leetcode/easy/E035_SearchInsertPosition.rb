class E035_SearchInsertPosition
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer}
    def search_insert(nums, target)
        a = 0
        b = nums.size - 1
        while( a <= b)
            m = ( a + b ) / 2
            return m if ( nums[m] == target )
            if ( nums[m] > target ) 
                b = m - 1
            else
                a = m + 1
            end
        end
        return a
    end
end