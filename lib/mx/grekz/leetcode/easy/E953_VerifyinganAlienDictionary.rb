# @author grekz
# @url http://grekz.wordpress.com
class E953_VerifyinganAlienDictionary
    # @param {String[]} words
    # @param {String} order
    # @return {Boolean}
    def is_alien_sorted(words, order)
        return true if words.size < 2
        prev = words[0]
        dict = {}
        order.each_char.with_index { |val,index| dict[val] = index }
        words.each{ |w|
            return false if compare(prev,w, dict) > 0
            prev = w
        }
        true
    end
    def compare(a,b,dict)
        al, bl, com, i = a.size, b.size, 0, 0
        while i < al and i < bl and com == 0
            com = dict[a[i]] - dict[b[i]]
            i += 1
        end
        com == 0 ? al - bl : com
    end
end