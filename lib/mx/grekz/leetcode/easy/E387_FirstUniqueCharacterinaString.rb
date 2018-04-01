# @author grekz
class E387_FirstUniqueCharacterinaString
    # @param {String} s
    # @return {Integer}
    def first_uniq_char(s)
        res = s.size
        'abcdefghijklmnopqrstuvwxyz'.chars.each{
            |c|
            lInd = s.index(c)
            res = lInd if lInd and lInd == s.rindex(c) and res > lInd
        }
        res == s.size ? -1 : res
    end
end