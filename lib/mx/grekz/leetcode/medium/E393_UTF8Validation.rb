# @author grekz
class E393_UTF8Validation
    # @param {Integer[]} data
    # @return {Boolean}
    def valid_utf8(data)

        c = 0
        data.each do |d|
            if ( d >= 128 and d <= 191 )
                return false if ( c == 0 )
                c -= 1
            else
                return false if ( c != 0 )
                if ( d >= 128 ) 
                    if (d < 224) 
                        c = 1
                    elsif (d < 240)
                        c = 2
                    elsif (d < 248)
                        c = 3
                    else
                        return false
                    end
                end
            end
        end
        return c == 0
    end
end