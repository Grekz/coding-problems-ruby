# @author grekz
class E965_UnivaluedBinaryTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root
    # @return {Boolean}
    def is_unival_tree(root)
        return true if not root
        return false if root.left and root.left.val != root.val or not is_unival_tree(root.left)
        return false if root.right and root.right.val != root.val or not is_unival_tree(root.right)
        true
    end
end