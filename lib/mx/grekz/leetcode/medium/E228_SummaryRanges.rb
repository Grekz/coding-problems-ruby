# @author grekz
class E228_SummaryRanges
    # @param {Integer[]} nums
    # @return {String[]}
    def summary_ranges(nums)
        n, i, j, res = nums.size, 0, 0, []
        while i < n
            j = i
            c = nums[i].to_s
            while j + 1 < n && nums[j+1] - nums[j] == 1
                j += 1 
            end
            res << c + ( j == i ? "" : "->" + nums[j].to_s )
            i = j + 1
        end
        return res
    end
end