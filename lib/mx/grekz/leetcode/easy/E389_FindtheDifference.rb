# @author grekz
class E389_FindtheDifference
    # @param {String} s
    # @param {String} t
    # @return {Character}
    def find_the_difference(s, t)
        r = 0
        s.chars{|x| r ^= x.ord }
        t.chars{|x| r ^= x.ord }
        r.chr
    end
end