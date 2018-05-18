# @author grekz
class E543_DiameterofBinaryTree
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
    def diameter_of_binary_tree(root)
        @res = 0
        def doit( n )
            return 0 if not n
            le = doit(n.left)
            ri = doit(n.right)
            @res = [@res, le+ri].max
            1 + [le,ri].max
        end
        doit(root)
        @res
    end
end