# @author grekz
class E485_MaxConsecutiveOnes
    # @param {Integer[]} nums
    # @return {Integer}
    def find_max_consecutive_ones(nums)
        cur = ma = 0
        nums.each{ |x|
            if ( x == 1 )
                cur+=1
            else
                cur = 0
            end
            ma = cur if ( ma < cur )
        }
        ma
    end
end