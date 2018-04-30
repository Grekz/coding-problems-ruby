# @author grekz
class E824_GoatLatin
    # @param {String} s
    # @return {String}
    def to_goat_latin(s)
        vowels = "aeiouAEIOU"
        res = ""
        i = 1
        s.split(' ').each{
            |c|
            res += " "
            curChar = c[0]
            if vowels.include? curChar
                res += c
            else
                res += c[1..-1] + curChar 
            end
            res += "ma"
            i.times{ res += "a"}
            i += 1
        }
        res[1..-1]
    end
end