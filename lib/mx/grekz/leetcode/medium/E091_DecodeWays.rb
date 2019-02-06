# @author grekz
class E091_DecodeWays
    # @param {String} s
    # @return {Integer}
    def num_decodings(s)
        return 0 if s == nil or s.size < 1 or s[0] == '0'
        res = [1,1]
        t = s.size - 1
        t.times{ 
            |i|
            res << 0
            res[i+2] = res[i+1] if s[i+1] != '0'
            res[i+2] += res[i] if s[i] == '1' or ( s[i] == '2' and s[i+1].ord < 55 )
        }
        res[-1]
    end
end