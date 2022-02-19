//: [Previous](@previous)
/*:
 ## [102. Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)
 [__Tree__] [__Medium__]

 Given the `root` of a binary tree,  return _the level order traversal of its nodes' values_. (i.e., from left to right, level by level).
 */
import BlindSwift

let solution = Solution()

let tree = TreeNode(3)
tree.left = TreeNode(9)
tree.right = TreeNode(20, TreeNode(15), TreeNode(7))

assert(solution.levelOrder2(tree) == [[3], [9, 20], [15, 7]])
assert(solution.levelOrder2(TreeNode(1)) == [[1]])
assert(solution.levelOrder2(nil) == [])
//: [Next](@next)
