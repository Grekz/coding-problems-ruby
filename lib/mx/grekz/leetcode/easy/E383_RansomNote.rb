# @author grekz
class E383_RansomNote
    # @param {String} ransom_note
    # @param {String} magazine
    # @return {Boolean}
    def can_construct(ransom_note, magazine)
        mag = {}
        magazine.chars.each{ 
            |c|
            if (mag.key?(c)) 
                mag[c]+=1
            else 
                mag[c] = 1
            end
        }
            
        ransom_note.chars.each{ 
            |c|
            return false if not mag.key?(c) or mag[c] == 0
            mag[c] -= 1 
        }
        return true
    end
end