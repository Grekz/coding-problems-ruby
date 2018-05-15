# @author grekz
class E551_StudentAttendanceRecordI
    # @param {String} s
    # @return {Boolean}
    def check_record(s)
        !s.include?("LLL") and s.index("A") == s.rindex("A")
    end
end