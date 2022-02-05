//: [Previous](@previous)
/*:
 ## [206. Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)
 [__Linked List__] [__Easy__]

 Given the `head` of a singly linked list, reverse the list, and return _the reversed list_.
*/
import BlindSwift

let solution = Solution()

let node = ListNode.from([1, 2, 3, 4, 5])!
print(node)

let revesedNode = solution.reverseList(node)!
print(revesedNode)

let revesedRevesedNode = solution.reverseList(revesedNode)!
assert(node.description == revesedRevesedNode.description)
//: [Next](@next)
