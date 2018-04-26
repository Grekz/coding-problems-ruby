# @author grekz
class E806_NumberofLinesToWriteString
    # @param {Integer[]} widths
    # @param {String} s
    # @return {Integer[]}
    def number_of_lines(widths, s)
        lastLength = 0
        lines = 0
        s.chars.each{|c|
            curWidth = widths[c.ord - 97]
            if (lastLength + curWidth > 100)
                lines += 1
                lastLength = curWidth
            else
                lastLength += curWidth
            end
        }
        lines += 1 if ( lastLength < 100 ) 
        [lines, lastLength]
    end
end