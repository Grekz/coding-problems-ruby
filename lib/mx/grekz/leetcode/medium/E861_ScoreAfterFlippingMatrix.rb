# @author grekz
class E861_ScoreAfterFlippingMatrix
    # @param {Integer[][]} a
    # @return {Integer}
    def matrix_score(a)
        rows, cols = a.size, a[0].size
        ans = 0
        cols.times { |c|
            col = 0
            rows.times { |r| 
                col += a[r][c] ^ a[r][0]    
            }
            ans += [col, rows - col].max * ( 1 << ( cols - c - 1) )
        }
        ans
    end
end