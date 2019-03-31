# @author grekz
class E1018_BinaryPrefixDivisibleBy5
    # @param {Integer[]} a
    # @return {Boolean[]}
    def prefixes_div_by5(a)
        tmp, res = 0, []
        a.each{ |x| 
            tmp = ( (tmp << 1) + x ) % 5
            res << (tmp == 0)
        }
        return res
    end
end