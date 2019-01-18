# @author grekz
class E951_FlipEquivalentBinaryTrees
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root1
    # @param {TreeNode} root2
    # @return {Boolean}
    def flip_equiv(a, b)
        (not a or not b) ? a == b : a.val == b.val && (flip_equiv(a.left, b.left) && flip_equiv(a.right, b.right) || flip_equiv(a.right, b.left) && flip_equiv(a.left, b.right))
    end
end