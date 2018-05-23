# @author grekz
class E094_BinaryTreeInorderTraversal
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @return {Integer[]}
    def inorder_traversal(root)
        @res = []
        def doit(x)
            if x 
                doit(x.left)
                @res << x.val
                doit(x.right)
            end
        end
        doit(root)
        @res
    end
end