# @author grekz
class E0941_ValidMountainArray
    # @param {Integer[]} a
    # @return {Boolean}
    def valid_mountain_array(a)
        n, i = a.size, 0
        i += 1 while ( i + 1 < n and a[i] < a[i + 1] )  
        return false if ( i== 0 or i == n - 1 )
        i += 1 while ( i + 1 < n and a[i] > a[i + 1] )
        return i == n - 1
    end
end