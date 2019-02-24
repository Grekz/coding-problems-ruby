# @author grekz
class E999_AvailableCapturesforRook
    # @param {Character[][]} board
    # @return {Integer}
    def num_rook_captures(board)
        rows, cols, ans, posR, posC = board.size, board[0].size, 0, 0, 0
        rows.times{ |i| 
            cols.times{ |j|
                if board[i][j] == 'R'
                    posR = i
                    posC = j
                    break
                end
            }
        }            

        ((posR + 1)...rows).each { |i|
            if board[i][posC] != '.' 
                if board[i][posC] == 'p'
                    ans += 1
                end
                break
            end
        }

        (posR - 1).downto(0).each{ |i|
            if board[i][posC] != '.' 
                if board[i][posC] == 'p'
                    ans += 1
                end
                break
            end
        }
            
        ((posC + 1)...cols).each{ |i|
            if board[posR][i] != '.' 
                if board[posR][i] == 'p'
                    ans += 1
                end
                break
            end
        }

        (posC - 1).downto(0).each{ |i|
            if board[posR][i] != '.' 
                if board[posR][i] == 'p'
                    ans += 1
                end
                break
            end
        }
        return ans
    end
end