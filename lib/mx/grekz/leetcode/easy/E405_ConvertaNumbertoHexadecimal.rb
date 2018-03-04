class E405_ConvertaNumbertoHexadecimal
    # @param {Integer} num
    # @return {String}
    def to_hex(num)
        return "0" if num == 0
        cc = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'] 
        res = ""
        8.times{
            res = cc[num & 15] + res
            num >>= 4
        }
        res.sub!(/^0*/, "")
    end
end