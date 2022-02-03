//: [Previous](@previous)

/*:
 ## [206. Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/)
 [__Linked List__] [__Easy__]

 Given the `head` of a singly linked list, reverse the list, and return _the reversed list_.
*/
import BlindSwift

let solution = Solution()

// TC1
let node = ListNode.from([1, 2, 3, 4])!
print(node)
assert(solution.hasCycle(node) == false)

// TC2
let nodeA = ListNode(3)
let nodeB = ListNode(2)
let nodeC = ListNode(0)
let nodeD = ListNode(-4)

nodeA.next = nodeB
nodeB.next = nodeC
nodeC.next = nodeD
nodeD.next = nodeB

assert(solution.hasCycle(nodeA) == true)
//: [Next](@next)
