# @author grekz
class E700_SearchinaBinarySearchTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root
    # @param {Integer} val
    # @return {TreeNode}
    def search_bst(root, val)
        return [] if not root
        return root if root.val == val
        search_bst( val < root.val ? root.left : root.right, val)
    end
end