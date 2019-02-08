# @author grekz
class E696_CountBinarySubstrings
    # @param {String} s
    # @return {Integer}
    def count_binary_substrings(s)
        res, p, c, n = 0, 0, 1, s.size - 1
        n.times{ |i| 
            if s[i] != s[i+1]
                res += [p,c].min
                p = c
                c = 1
            else
                c += 1
            end
        }
        res + [p,c].min
    end
end