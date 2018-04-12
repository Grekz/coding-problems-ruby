# @author grekz
class E455_AssignCookies
    # @param {Integer[]} g
    # @param {Integer[]} s
    # @return {Integer}
    def find_content_children(g, s)
        g.sort!
        s.sort!
        gi = si = 0
        gn = g.size
        sn = s.size
        while gi < gn and si < sn
            if g[gi] <= s[si]
                gi += 1
            end
            si += 1
        end
        gi
    end
end