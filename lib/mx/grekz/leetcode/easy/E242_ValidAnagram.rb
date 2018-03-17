# @author grekz
class E242_ValidAnagram
    # @param {String} s
    # @param {String} t
    # @return {Boolean}
    def is_anagram(s, t)
        return false if( s.size != t.size )
        return true if s == ""
        tmp = [0]*26
        s.chars.each {
            |c|
            tmp[c.ord - 97] += 1
        }
        t.chars.each {
            |c|
            if ( tmp[c.ord - 97] == 0 ) 
                return false
            end
            tmp[c.ord - 97]-=1
        }
        return true
    end
end