//: [Previous](@previous)
/*:
 ## [21. Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)
 [__Linked List__] [__Easy__]

 You are given the heads of two sorted linked lists `list1` and `list2`.

 Merge the two lists in a one __sorted__ list. The list should be made by splicing together the nodes of the first two lists.

 Return `the head of the merged linked list`.
 */
import BlindSwift

let solution = Solution()
let list1 = ListNode.from([1, 2, 4])
let list2 = ListNode.from([1, 3, 5, 6])

let mergedList = solution.mergeTwoLists(list1, list2)
assert(mergedList != nil)
print(mergedList!)
//: [Next](@next)
