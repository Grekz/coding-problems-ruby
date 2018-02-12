class E110_BalancedBinaryTree
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
    def is_balanced(root)
        
        def dfs(root)
            return 0 if ( root == nil )
            lh = dfs(root.left)
            return -1 if ( lh == -1 )
            rh = dfs(root.right)
            return -1 if ( rh == -1 )
            dif = lh - rh
            return -1 if ( dif > 1 || dif < -1 )
            return [lh, rh].max + 1
        end
        return dfs(root) != -1
    end
end