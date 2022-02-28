//: [Previous](@previous)
/*:
 ## [230. Kth Smallest Element in a BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst/)
 [__Tree__] [__Medium__]

 Given the `root` of a binary search tree, and an integer `k`, return _the `kth` smallest value __(1-indexed)__ of all the values of the nodes in the tree_.
 */
import BlindSwift

let solution = Solution()

let root1 = TreeNode(3)
root1.left = TreeNode(1, nil, TreeNode(2))
root1.right = TreeNode(4)
print(solution.kthSmallest1(root1, 1))
print(solution.kthSmallest2(root1, 1))

let root2 = TreeNode(1, nil, TreeNode(2))
print(solution.kthSmallest1(root2, 2))
print(solution.kthSmallest2(root2, 2))
//: [Next](@next)
