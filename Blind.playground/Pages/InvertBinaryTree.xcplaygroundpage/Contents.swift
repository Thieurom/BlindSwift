//: [Previous](@previous)
/*:
 ## [226. Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree/)
 [__Tree__] [__Easy__]

 Given the `root` of a binary tree, invert the tree, and return _its root_.
 */
import BlindSwift

let solution = Solution()

let tree = TreeNode.from([4, 2, 7, 1, 3, 6, 9])
print(tree!)

solution.invertTree(tree)
print(tree!)
//: [Next](@next)
