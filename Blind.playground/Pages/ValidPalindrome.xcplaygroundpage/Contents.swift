//: [Previous](@previous)
/*:
 ## [125. Valid Palindrome](https://leetcode.com/problems/valid-palindrome/)
 [__String__] [__Easy__]

 A phrase is a __palindrome__ if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string `s`, return `true` _if it is a __palindrome__, or `false` otherwise_.
 */
import BlindSwift

let solution = Solution()

assert(solution.isPalindrome("A man, a plan, a canal: Panama") == true)
assert(solution.isPalindrome("race a car") == false)
assert(solution.isPalindrome(" ") == true)
//: [Next](@next)
