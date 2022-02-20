//: [Previous](@previous)
/*:
 ## [98. Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree/)
 [__Tree__] [__Medium__]

 Given the `root` of a binary tree, _determine if it is a valid binary search tree (BST)_.

 A __valid BST__ is defined as follows:

 - The left subtree of a node contains only nodes with keys __less than__ the node's key.
 - The right subtree of a node contains only nodes with keys __greater than__ the node's key.
 - Both the left and right subtrees must also be binary search trees.
 */
import BlindSwift

let solution = Solution()

let tree1 = TreeNode.from([2, 1, 3])
assert(solution.isValidBST1(tree1) == true)
assert(solution.isValidBST2(tree1) == true)

let tree2 = TreeNode(5, TreeNode(1), TreeNode(4, TreeNode(3), TreeNode(6)))
assert(solution.isValidBST1(tree2) == false)
assert(solution.isValidBST2(tree2) == false)
//: [Next](@next)
