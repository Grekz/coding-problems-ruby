# @author grekz
class E0859_BuddyStrings
    # @param {String} a
    # @param {String} b
    # @return {Boolean}
    def buddy_strings(a, b)
        aa, bb = a.size, b.size
        return false if aa != bb
        if a == b
            x = Array.new(26, 0)
            a.each_char{ |c| x[c.ord - 97] += 1 }
            x.each { |z| return true if z > 1 }
        else
            xa, xb, ya, yb = -1, -2, -3, -4
            aa.times { |i| 
                if a[i] != b[i]
                    if xa == -1 
                        xa = a[i]
                        yb = b[i]
                    elsif ya == -3 
                        ya = a[i]
                        xb = b[i]
                    else
                        return false
                    end
                end
            }
            return xa == xb && ya == yb    
        end
        return false
    end
end