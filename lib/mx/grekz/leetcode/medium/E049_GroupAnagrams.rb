# @author grekz
class E049_GroupAnagrams
    # @param {String[]} strs
    # @return {String[][]}
    def group_anagrams(strs)
        m = {}
        m.default = []
        strs.each{
            |s|
            key = s.chars.sort.join
            m[key] = m[key] + [s] 
        }
        m.values
    end
end