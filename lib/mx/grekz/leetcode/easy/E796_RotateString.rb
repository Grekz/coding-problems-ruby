# @author grekz
class E796_RotateString
    # @param {String} a
    # @param {String} b
    # @return {Boolean}
    def rotate_string(a, b)
        a.size == b.size and (a+a).include? b
    end
end