class E205_IsomorphicStrings
    # @param {String} s
    # @param {String} t
    # @return {Boolean}
    def is_isomorphic(s, t)
        n = s.size
        return false if ( n != t.size )
        a = [-1] * 256
        b = [-1] * 256
        n.times{
            |i|
            si = s[i].ord
            ti = t[i].ord
            return false if ( a[si] != b[ti] )
            a[si] = i
            b[ti] = i
        }
        true
    end
end