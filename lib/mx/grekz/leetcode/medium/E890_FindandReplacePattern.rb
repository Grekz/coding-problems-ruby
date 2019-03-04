# @author grekz
class E890_FindandReplacePattern
    # @param {String[]} words
    # @param {String} pattern
    # @return {String[]}
    def find_and_replace_pattern(words, pattern)
        res = []
        words.each { |x| 
            res << x if check(x, pattern) 
        }
        return res
    end
    def check(a, b)
        dict, i = {}, 0
        a.each_char { |x|
            bChar = b[i]
            i += 1
            dict[x] = bChar if not dict.key?(x)
            return false if dict[x] != bChar
        }
        ch = Array.new(26, false)
        dict.values.each{ |v| 
            return false if ch[v.ord - 97]
            ch[v.ord - 97] = true
        }
        return true
    end
end