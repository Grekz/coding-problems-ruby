# @author grekz
class E791_CustomSortString
    # @param {String} s
    # @param {String} t
    # @return {String}
    def custom_sort_string(s, t)
        tp = [0] * 26
        res = ""
        t.chars.each { |x| tp[x.ord - 97] += 1 }
        s.chars.each { 
            |x| 
            tp[x.ord - 97].times { res << x }
            tp[x.ord - 97] = 0
        }
        t.chars.each { 
            |x| 
            tp[x.ord - 97].times { res << x }
            tp[x.ord - 97] = 0
        }
        res
    end
end