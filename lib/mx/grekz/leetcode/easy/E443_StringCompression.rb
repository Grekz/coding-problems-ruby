# @author grekz
class E443_StringCompression
    # @param {Character[]} chars
    # @return {Integer}
    def compress(chars)
        ind = ans = 0
        n = chars.size
        while ind < n 
            c = chars[ind]
            cc = 0
            while ind < n and chars[ind] == c
                cc += 1
                ind += 1
            end
            chars[ans] = c
            ans += 1
            cc.to_s.chars.each { | x | chars[ans] = x; ans+=1 } if cc > 1
        end
        ans
    end
end