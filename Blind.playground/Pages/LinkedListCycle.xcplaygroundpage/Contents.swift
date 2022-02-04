//: [Previous](@previous)

/*:
 ## [141. Linked List Cycle](https://leetcode.com/problems/linked-list-cycle/)
 [__Linked List__] [__Easy__]

 Given `head`, the head of a linked list, determine if the linked list has a cycle in it.

 There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the `next` pointer. Internally, `pos` is used to denote the index of the node that tail's `next` pointer is connected to. __Note that `pos` is not passed as a parameter__.

 Return `true` _if there is a cycle in the linked list_. Otherwise, return `false`.
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
