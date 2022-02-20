//: [Previous](@previous)
/*:
 ## [105. Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)
 [__Tree__] [__Medium__]

 Given two integer arrays `preorder` and `inorder` where `preorder` is the preorder traversal of a binary tree and `inorder` is the inorder traversal of the same tree, construct and return _the binary tree_.
 */
import BlindSwift

let solution = Solution()

let tree1 = solution.buildTree([3, 9, 20, 15, 7], [9, 3, 15, 20, 7])
assert(tree1 != nil)
print(tree1!)

let tree2 = solution.buildTree([-1], [-1])
assert(tree2 != nil)
print(tree2!)

let tree3 = solution.buildTree([], [])
assert(tree3 == nil)
//: [Next](@next)
