class E168_ExcelSheetColumnTitle
    # @param {Integer} n
    # @return {String}
    def convert_to_title(n)
        return "" if n == 0
        res = ""
        while n > 0
            n -= 1
            res = (65 + n%26).chr + res
            n /= 26
        end
        res
    end
end