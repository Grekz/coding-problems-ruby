class E101_SymmetricTree
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
    def is_symmetric(root)
        def isMirror(l, r)
            return true if ( l == nil and r == nil )
            return false if ( l == nil or r == nil )
            return ( l.val == r.val and isMirror(l.left, r.right) and isMirror(l.right, r.left) )
        end
        return true if (root == nil)
        return isMirror(root.left, root.right)
    end
end