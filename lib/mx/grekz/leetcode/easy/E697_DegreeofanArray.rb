# @author grekz
class E697_DegreeofanArray
    # @param {Integer[]} nums
    # @return {Integer}
    def find_shortest_sub_array(nums)
        counts, ini, max, res = {},{}, 0,0
        nums.each_with_index{
            |x, i|
            ini[x] = ini.fetch(x){i}
            cur = counts.fetch(x){0} + 1
            counts[x] = cur
            if max < cur
                max = cur
                res = i - ini[x] + 1
            elsif max == cur
                res = [res, i - ini[x] + 1].min
            end
        }
        res
    end
end