# @author grekz
class E0394_DecodeString
    # @param {String} s
    # @return {String}
    def decode_string(s)
        i, n, stack, res = 0, s.size, [], ""
        while i < n
            c = s[i]
            if c == c.to_i.to_s
                tmp = ''
                while c == c.to_i.to_s
                    tmp += c
                    i += 1
                    c = s[i]
                end
                stack << res << tmp
                res = ''
            elsif c == ']'
                tmp = ''
                stack.pop.to_i.times { tmp += res }
                res = stack.pop + tmp
            else
                res += c
            end
            i+=1
        end
        return res
    end
end