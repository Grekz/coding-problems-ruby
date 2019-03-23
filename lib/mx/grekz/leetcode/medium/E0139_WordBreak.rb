# @author grekz
class E0139_WordBreak
    # @param {String} s
    # @param {String[]} word_dict
    # @return {Boolean}
    def word_break(s, word_dict)
        n = s.size + 1
        f = Array.new(n, false)
        f[0] = true
        (1..n).each{ 
            |i| 
            i.times{
                |j|
                if f[j] and word_dict.include? s[j...i]
                    f[i] = true
                    break
                end
            }    
        }
        return f[n - 1]
    end
end