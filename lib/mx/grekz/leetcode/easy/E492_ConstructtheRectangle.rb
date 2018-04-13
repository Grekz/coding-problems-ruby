# @author grekz
class E492_ConstructtheRectangle
    # @param {Integer} area
    # @return {Integer[]}
    def construct_rectangle a
        w = (a**0.5).floor
        w -= 1 while a%w != 0
        [a/w, w]
    end
end