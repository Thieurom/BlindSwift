//: [Previous](@previous)
/*:
 ## [100. Same Tree](https://leetcode.com/problems/same-tree/)
 [__Tree__] [__Easy__]

 Given the roots of two binary trees `p` and `q`, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
 */
import BlindSwift

let solution = Solution()

let tree1 = TreeNode(1, TreeNode(2), TreeNode(3))
let tree2 = TreeNode(1, TreeNode(2), TreeNode(3))
assert(solution.isSameTree(tree1, tree2) == true)
print("\(tree1) and \(tree2) is the same")

let tree3 = TreeNode(1, TreeNode(2), nil)
let tree4 = TreeNode(1, nil, TreeNode(2))
assert(solution.isSameTree(tree3, tree4) == false)
print("\(tree3) and \(tree4) is not the same")
//: [Next](@next)
