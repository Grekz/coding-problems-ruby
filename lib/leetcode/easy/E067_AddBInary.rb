# https://leetcode.com/problems/add-binary/description/
# @author grekz
class E067_AddBInary
  # @param {String} a
  # @param {String} b
  # @return {String}
  def add_binary(a, b)
      '%b' % ( a.to_i(2) + b.to_i(2) )
  end
end