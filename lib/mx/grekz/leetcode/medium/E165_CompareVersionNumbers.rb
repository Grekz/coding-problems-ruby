# @author grekz
class E165_CompareVersionNumbers
    # @param {String} version1
    # @param {String} version2
    # @return {Integer}
    def compare_version(version1, version2)
        a, b = version1.split('.'), version2.split('.')
        al, bl = a.size, b.size
        n = [al, bl].max
        n.times{ 
            |i|
            c = (i < al ? a[i].to_i : 0) - (i < bl ? b[i].to_i : 0)
            if c < 0
                return -1
            elsif c > 0
                return 1
            end
        }
        return 0
    end
end