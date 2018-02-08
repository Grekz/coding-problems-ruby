class E111_MinimumDepthofBinaryTree
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
    def min_depth(root)
        return 0 if(root == nil) 
        def drill( walk, lvl )
            return 2147483647 if(walk == nil)
            return lvl if(walk.left == nil and walk.right == nil)
            return [drill(walk.left, lvl+1), drill(walk.right, lvl+1)].min
        end
        return drill(root, 1)
    end
end