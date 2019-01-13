# @author grekz
class E938_RangeSumofBST
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root
    # @param {Integer} l
    # @param {Integer} r
    # @return {Integer}
    def range_sum_bst(root, l, r)
        return 0 if not root
        res = 0
        res += root.val if l <= root.val && root.val <= r
        res += range_sum_bst(root.left, l, r) if l <= root.val
        res += range_sum_bst(root.right, l, r) if r >= root.val
        return res
    end
end