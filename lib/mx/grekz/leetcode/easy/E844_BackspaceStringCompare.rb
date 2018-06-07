# @author grekz
class E844_BackspaceStringCompare
    # @param {String} s
    # @param {String} t
    # @return {Boolean}
    def backspace_compare(s, t)
        doit(s) == doit(t)
    end
    def doit(s)
        n = s.size - 1
        res = ""
        c = 0
        h = '#'
        n.downto(0) {
            |i|
            cur = s[i]
            if cur == h
                c += 1
            elsif c > 0
                c -= 1
            else
                res += cur
            end
        }
        res
    end
end