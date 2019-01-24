# @author grekz
class E034_FindFirstandLastPositionofElementinSortedArray
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer[]}
    def search_range(nums, target)
        return [-1,-1] if not nums or nums.size < 1
        idx = b_search( nums, target, true )
        return [-1,-1] if nums[idx % nums.size] != target
        rIdx = b_search( nums, target, false ) - 1
        return [idx, rIdx]
    end
    def b_search(n, t, l)
        a, b, m = 0, n.size, 0
        while a < b
            m = a + ( b - a ) / 2
            if n[m] > t or ( l and n[m] == t )
                b = m
            else
                a = m + 1
            end
        end
        a
    end
end