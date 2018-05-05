# @author grekz
class E821_ShortestDistancetoaCharacter
    # @param {String} s
    # @param {Character} c
    # @return {Integer[]}
    def shortest_to_char(s, c)
        n = s.size
        res = [0] * n
        pos = -n
        n.times{
            |i|
            if s[i] == c 
                pos = i
            else
                res[i] = i - pos
            end
        }
        
        (n-1).downto(0).each{
            |i|
            if s[i] == c 
                pos = i
            else
                res[i] = [res[i], (i - pos).abs].min
            end
        }
        res
    end
end