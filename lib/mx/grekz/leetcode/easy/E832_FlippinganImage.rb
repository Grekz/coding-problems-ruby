# @author grekz
class E832_FlippinganImage
    # @param {Integer[][]} a
    # @return {Integer[][]}
    def flip_and_invert_image(a)
        a.map{ |y| y.reverse.map{ |x| x  ^ 1 } }
    end
end