# @author grekz
class E231_PowerofTwo
    # @param {Integer} n
    # @return {Boolean}
    def is_power_of_two(n)
        return false if (n < 1 )
        hasOne = false
        32.times {    
            if( (n & 1) == 1 )
                if(hasOne)
                    return false
                else
                    hasOne = true
                end
            end
            n >>= 1
        }
            
        return true
    end
end