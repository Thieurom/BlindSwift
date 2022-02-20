//: [Previous](@previous)
/*:
 ## [572. Subtree of Another Tree](https://leetcode.com/problems/subtree-of-another-tree/)
 [__Tree__] [__Easy__]

 Given the roots of two binary trees `root` and `subRoot`, return `true` if there is a subtree of `root` with the same structure and node values of `subRoot` and `false` otherwise.

 A subtree of a binary tree `tree` is a tree that consists of a node in `tree` and all of this node's descendants. The tree `tree` could also be considered as a subtree of itself.
 */
import BlindSwift

let solution = Solution()

let root = TreeNode.from([3, 4, 5, 1, 2])
let subRoot = TreeNode.from([4, 1, 2])
assert(solution.isSubtree1(root, subRoot) == true)
assert(solution.isSubtree2(root, subRoot) == true)

let root2 = TreeNode(3)
let left2 = TreeNode(4, TreeNode(1), TreeNode(2, TreeNode(0), nil))
let right2 = TreeNode(5)
root2.left = left2
root2.right = right2
assert(solution.isSubtree1(root2, subRoot) == false)
assert(solution.isSubtree2(root2, subRoot) == false)
//: [Next](@next)
