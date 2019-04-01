# @author grekz
class E1013_PartitionArrayIntoThreePartsWithEqualSum
    # @param {Integer[]} a
    # @return {Boolean}
    def can_three_parts_equal_sum(a)
        s = a.sum
        return false if s % 3 != 0
        s /= 3
        cnt, tmp = 0, 0
        a.each{ |x| 
            tmp += x
            if tmp == s 
                cnt += 1
                tmp = 0
            end
        }
        return cnt == 3
    end
end