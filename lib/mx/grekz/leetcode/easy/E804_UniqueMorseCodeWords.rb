# @author grekz
class E804_UniqueMorseCodeWords
    # @param {String[]} words
    # @return {Integer}
    def unique_morse_representations(words)
        cc = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        s = Set.new
        words.each{
            |w|
            x = ""
            w.chars.each{
                |c|
                x+= cc[c.ord-97]
            }
            s.add(x)
        }
        s.size
    end
end