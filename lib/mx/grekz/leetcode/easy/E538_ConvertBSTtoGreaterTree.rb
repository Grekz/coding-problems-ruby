# @author grekz
class E538_ConvertBSTtoGreaterTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @return {TreeNode}
    def convert_bst(root)
        @cur = 0
        def go(x)
            return if not x
            go(x.right)
            x.val += @cur
            @cur = x.val
            go(x.left)
        end
        go root
        root
    end
end