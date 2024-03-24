//: [Previous](@previous)
/*:
 ## [143. https://leetcode.com/problems/reorder-list/description/)
 [__Linked List__] [__Medium__]
 
 You are given the head of a singly linked-list. The list can be represented as:

 > L0 → L1 → … → Ln - 1 → Ln
 
 _Reorder the list to be on the following form_:

 > L0 → Ln → L1 → Ln - 1 → L2 → Ln - 2 → …
 
 You may not modify the values in the list's nodes. Only nodes themselves may be changed.
 */
import BlindSwift

let solution = Solution()

let list = ListNode.from([1, 2, 3, 4, 5])!
solution.reorderList(list)
print(list)
//: [Next](@next)
