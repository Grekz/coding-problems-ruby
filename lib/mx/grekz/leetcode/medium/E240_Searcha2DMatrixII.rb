# @author grekz
class E240_Searcha2DMatrixII
    # @param {Integer[][]} matrix
    # @param {Integer} target
    # @return {Boolean}
    def search_matrix(matrix, target)
        rs = matrix.size
        return false if rs < 1
        r, c = 0, matrix[0].size - 1
        while r < rs and c > -1
            cur = matrix[r][c]
            return true if cur == target
            if cur < target
                r += 1
            else
                c -= 1
            end
        end
        false
    end
end