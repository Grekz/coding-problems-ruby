# @author grekz
class E263_UglyNumber
    # @param {Integer} num
    # @return {Boolean}
    def is_ugly(num)
        return false if (num == 0 || num == 14) 
        return true if (num == 1 || num == 6 || num == 8)
        return is_ugly(num / 5) if ( num % 5 == 0)
        return is_ugly(num / 3) if ( num % 3 == 0) 
        return is_ugly(num / 2) if ( num % 2 == 0) 
        return false;
    end
end