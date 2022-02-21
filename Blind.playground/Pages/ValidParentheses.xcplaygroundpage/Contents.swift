//: [Previous](@previous)
/*:
 ## [20. Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)
 [__String__] [__Easy__]

 Given a string `s` containing just the characters `'(', ')', '{', '}', '['` and `']'`, determine if the input string is valid.

 An input string is valid if:

 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 */
import BlindSwift

let solution = Solution()

let s1 = "()"
assert(solution.isValid(s1) == true)

let s2 = "([]{})"
assert(solution.isValid(s2) == true)

let s3 = "[)"
assert(solution.isValid(s3) == false)
//: [Next](@next)
