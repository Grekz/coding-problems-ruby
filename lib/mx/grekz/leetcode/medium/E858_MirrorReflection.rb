# @author grekz
class E858_MirrorReflection
    # @param {Integer} p
    # @param {Integer} q
    # @return {Integer}
    def mirror_reflection(p, q)
        g = gcd(p, q)
        p /= g
        p %= 2
        q /= g
        q %= 2
        return 1 if p == 1 and q == 1 
        return 0 if p == 1
        return 2
    end
                
    def gcd( a, b )
        return b if ( a == 0 )
        return gcd( b % a, a)
    end
end