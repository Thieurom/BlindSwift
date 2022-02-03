//
//  LinkedListCycle.swift
//  
//
//  Created by Doan Le Thieu on 03/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func hasCycle(_ head: ListNode?) -> Bool {
        var slow: ListNode? = head
        var fast: ListNode? = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return true
            }
        }

        return false
    }
}
