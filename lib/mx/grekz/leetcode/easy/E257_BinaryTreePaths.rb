# @author grekz
class E257_BinaryTreePaths
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @return {String[]}
    def binary_tree_paths(root)
        res = []
        def traverse(node, cur, res)
            tmp = cur + node.val.to_s
            if not node.left and not node.right
                res << tmp
            else
                traverse(node.left, tmp + "->", res) if node.left
                traverse(node.right, tmp + "->", res) if node.right
            end
        end
        traverse(root, "", res) if root
        res
    end
end