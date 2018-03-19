# @author grekz
class E278_FirstBadVersion
    # The is_bad_version API is already defined for you.
    # @param {Integer} version
    # @return {boolean} whether the version is bad
    # def is_bad_version(version):
    
    # @param {Integer} n
    # @return {Integer}
    def first_bad_version(n)
        l = 1 
        r = n 
        m = 0
        while ( l < r )
            m = l + ( r - l ) / 2
            if ( is_bad_version(m) )
                r = m
            else 
            l = m + 1
            end
        end
        return l
    end
end