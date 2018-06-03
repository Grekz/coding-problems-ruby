# @author grekz
class E048_RotateImage
    # @param {Integer[][]} matrix
    # @return {Void} Do not return anything, modify matrix in-place instead.
    def rotate(matrix)
        n = matrix.size - 1
        for i in 0..n
            for j in i+1..n
                t = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = t
            end
        end
        for i in 0..n
            matrix[i] = matrix[i].reverse
        end
    end
end