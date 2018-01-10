class E008_StringtoInteger
    # @param {String} str
    # @return {Integer}
    def my_atoi(str)
        str.strip!
        return 0 if str.size < 1
        z = '0'
        n = '9'
        sign = res = ''
        if str[0] == '-' or str[0] == '+'
            sign = str[0]
            str = str[1..-1]
        end
        str.chars.each {
            |x|
            if x >= z and x <= n
                res += x
            else
                break
            end
        }
        if res != '' 
            resInt = ( sign + res ).to_i
            return 2147483647  if  resInt > 2147483647
            return -2147483648 if  resInt < -2147483648
            return resInt
        end
        return 0
    end
end