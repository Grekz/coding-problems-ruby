# @author grekz
class E038_CountandSay
    # @param {Integer} n
    # @return {String}
    def count_and_say(n)
        return "0" if n < 1
        return "1" if n == 1
        return "11" if n == 2
        return "21" if n == 3 
        arr = count_and_say( n - 1 )
        cur, count = '', 0
        res = ""
        arr.chars.each { |x|
            if cur != x
                res += count.to_s + "" + cur if count > 0
                count = 1
                cur = x
            else
                count+=1
            end
        }
        res += count.to_s + "" + cur
        return res
    end
end