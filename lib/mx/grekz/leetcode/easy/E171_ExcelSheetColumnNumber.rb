class E171_ExcelSheetColumnNumber
    # @param {String} s
    # @return {Integer}
    def title_to_number(s)
        res = 0
        0..(s.size).times{
            |i|
            res = res * 26 - 64 + s[i].ord
        }
        res
    end
end