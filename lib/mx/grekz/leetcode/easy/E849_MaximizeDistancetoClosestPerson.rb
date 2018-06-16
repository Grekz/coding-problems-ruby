# @author grekz
class E849_MaximizeDistancetoClosestPerson
    # @param {Integer[]} seats
    # @return {Integer}
    def max_dist_to_closest(seats)
        i, res, n = 0, 0, seats.size
        seats.each_with_index { |cur, j|
            if cur == 1
                if i == 0 
                    res = [res, j - i].max
                else 
                    res = [res, (j - i + 1) / 2].max
                end
                i = j + 1
            end
        }
        [res, n - i].max
    end
end