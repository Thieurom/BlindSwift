//: [Previous](@previous)
/*:
 ## [104. Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
 [__Tree__] [__Easy__]

 Given the `root` of a binary tree, return _its maximum depth_.

 A binary tree's __maximum depth__ is the number of nodes along the longest path from the root node down to the farthest leaf node.
 */
import BlindSwift

let solution = Solution()

let root = TreeNode(3)
let left = TreeNode(9)
let right = TreeNode(20, TreeNode(15), TreeNode(7))
root.left = left
root.right = right

assert(solution.maxDepth(root) == 3)
//: [Next](@next)
