# @author grekz
class E766_ToeplitzMatrix
    # @param {Integer[][]} matrix
    # @return {Boolean}
    def is_toeplitz_matrix(matrix)
        m = matrix.size - 1
        n = matrix[0].size - 1
        m.times{ |i| n.times{ |j| return false if matrix[i][j] != matrix[i+1][j+1] } }
        return true
    end
end