# @author grekz
class E530_MinimumAbsoluteDifferenceinBST
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @return {Integer}
    def get_minimum_difference(root)
        @minDiff = 2147483647
        @prev = nil
        def doit(n)
            return if not n
            doit(n.left)
            @minDiff = [@minDiff, n.val - @prev.val].min if @prev
            @prev = n
            doit(n.right)
        end
        doit(root)
        @minDiff
    end
end