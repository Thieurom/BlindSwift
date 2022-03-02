//: [Previous](@previous)
/*:
 ## [235. Lowest Common Ancestor of a Binary Search Tree](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/)
 [__Tree__] [__Easy__]

 Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

 According to the [definition of LCA on Wikipedia](https://en.wikipedia.org/wiki/Lowest_common_ancestor): “The lowest common ancestor is defined between two nodes `p` and `q` as the lowest node in `T` that has both `p` and `q` as descendants (where we allow __a node to be a descendant of itself__).”
 */
import BlindSwift

let solution = Solution()

let root1 = TreeNode(1)
let node11 = TreeNode(0)
let node12 = TreeNode(2)
root1.left = node11
root1.right = node12
assert(solution.lowestCommonAncestor1(root1, node11, node12) === root1)
assert(solution.lowestCommonAncestor2(root1, node11, node12) === root1)

let root2 = TreeNode(2)
let node21 = TreeNode(4)
let node22 = TreeNode(3)
let node23 = TreeNode(5)
node21.left = node22
node21.right = node23
root2.left = TreeNode(0)
root2.right = node21
assert(solution.lowestCommonAncestor1(root2, node22, node23) === node21)
assert(solution.lowestCommonAncestor2(root2, node22, node23) === node21)
//: [Next](@next)
