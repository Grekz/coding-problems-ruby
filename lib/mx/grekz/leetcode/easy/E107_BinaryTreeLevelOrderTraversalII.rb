class E107_BinaryTreeLevelOrderTraversalII
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @return {Integer[][]}
    def level_order_bottom(root)
        res = []
        def dfs(res, lvl, root)
            return if ( root == nil )
            le = res.size
            lvl += 1
            if ( le < lvl )
                res.unshift([])
                le+=1
            end
            res[le - lvl].push(root.val)
            dfs(res, lvl, root.left)
            dfs(res, lvl, root.right)
        end
        dfs(res, 0, root)
        return res
    end
end