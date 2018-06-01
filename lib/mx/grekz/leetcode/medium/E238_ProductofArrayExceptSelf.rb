# @author grekz
class E238_ProductofArrayExceptSelf
    # @param {Integer[]} nums
    # @return {Integer[]}
    def product_except_self(nums)
        n, t, p = nums.size - 1, 1, []
        nums.each_with_index{
            |e,i|
            p[i] = t
            t *= e
        }
        t = 1
        nums.reverse.each_with_index{
            |e,i|
            p[ n - i ] *= t
            t *= e
        }
        p
    end
end