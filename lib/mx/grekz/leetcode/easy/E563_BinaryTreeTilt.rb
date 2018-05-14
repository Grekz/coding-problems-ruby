# @author grekz
class E563_BinaryTreeTilt
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
    def find_tilt(root)
        @su = 0
        def doit(x)
            return 0 if not x
            left = doit(x.left)
            right = doit(x.right)
            @su += (left-right).abs
            return x.val + left + right
        end
        doit(root)
        @su
    end
end