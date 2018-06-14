# @author grekz
class E098_ValidateBinarySearchTree
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
    def is_valid_bst(root)
        def dfs ( x, max, min) 
            x == nil || !(x.val >= max || x.val <= min) && dfs(x.left, x.val, min) && dfs(x.right, max, x.val)
        end
        return root == nil || dfs(root, 2147483648, -2147483649)
    end
end