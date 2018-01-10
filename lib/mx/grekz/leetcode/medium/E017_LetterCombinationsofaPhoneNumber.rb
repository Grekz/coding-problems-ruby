class E017_LetterCombinationsofaPhoneNumber
    # @param {String} digits
    # @return {String[]}
    def letter_combinations(digits)
        return [] if digits.size < 1 or digits.index('0') != nil or digits.index('1') != nil
        val = {
            '2'=> 'abc'.chars,
            '3'=> 'def'.chars,
            '4'=> 'ghi'.chars,
            '5'=> 'jkl'.chars,
            '6'=> 'mno'.chars,
            '7'=> 'pqrs'.chars,
            '8'=> 'tuv'.chars,
            '9'=> 'wxyz'.chars
        }
        digits.chars.reduce(['']){
            | x, y |
            tmp = []
            x.each{ | xx | val[y].each{ | yy | tmp.push(xx + yy) } }
            x = tmp
        }
    end
end