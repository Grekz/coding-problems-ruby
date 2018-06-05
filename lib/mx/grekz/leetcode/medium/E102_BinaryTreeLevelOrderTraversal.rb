# @author grekz
class E102_BinaryTreeLevelOrderTraversal
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
    def level_order(root)
        res = []
        doit(res, root, 0) if root
        res
    end
    def doit(res, walk, lvl)
        res << [] if res.size <= lvl
        res[lvl] << walk.val
        doit(res, walk.left, lvl+1) if walk.left
        doit(res, walk.right, lvl+1) if walk.right
    end
end