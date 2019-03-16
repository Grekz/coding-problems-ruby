# @author grekz
class E1006_ClumsyFactorial
    # @param {Integer} n
    # @return {Integer}
    def clumsy(n)
        magic = [1, 2, 2, -1, 0, 0, 3, 3]
        return n + magic[ n > 4 ? n % 4 : n + 3]
    end
end