# @author grekz
class E482_LicenseKeyFormatting
    # @param {String} s
    # @param {Integer} k
    # @return {String}
    def license_key_formatting(s, k)
        c = s.upcase.gsub('-', '')
        res = ""
        le = c.size
        s1 = le % k == 0 ? k : le % k
        res = c[0...s1]
        while le > s1
            res += '-' + c[s1...s1+k]
            s1 += k
        end
        res
    end
end