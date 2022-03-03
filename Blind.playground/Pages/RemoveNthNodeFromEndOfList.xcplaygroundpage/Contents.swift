//: [Previous](@previous)
/*:
 ## [19. Remove Nth Node From End of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)
 [__Linked List__] [__Medium__]

 Given the `head` of a linked list, remove the `nth` node from the end of the list and return its head.
 */
import BlindSwift

let solution = Solution()

let list1 = ListNode.from([1, 2, 3, 4, 5])
print(list1!)
print(solution.removeNthFromEnd(list1, 2) ?? "nil")

print("------")

let list2 = ListNode.from([1])
print(list2!)
print(solution.removeNthFromEnd(list2, 1) ?? "nil")

print("------")

let list3 = ListNode.from([1, 2])
print(list3!)
print(solution.removeNthFromEnd(list3, 2) ?? "nil")
//: [Next](@next)
