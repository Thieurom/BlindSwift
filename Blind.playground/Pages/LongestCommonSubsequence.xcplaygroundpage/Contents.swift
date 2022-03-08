//: [Previous](@previous)
/*:
 ## [1143. Longest Common Subsequence](https://leetcode.com/problems/longest-common-subsequence/)
 [__Dynamic Programming__] [__Medium__]

 Given two strings `text1` and `text2`, return _the length of their longest __common subsequence___. If there is no __common subsequence__, return `0`.

 A __subsequence__ of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

 For example, `"ace"` is a subsequence of `"abcde"`.
 A __common subsequence__ of two strings is a subsequence that is common to both strings.
 */
import BlindSwift

let solution = Solution()

print(solution.longestCommonSubsequence1("abcde", "ace"))
print(solution.longestCommonSubsequence2("abcde", "ace"))
print("-------")

print(solution.longestCommonSubsequence1("abc", "abc"))
print(solution.longestCommonSubsequence2("abc", "abc"))
print("-------")

print(solution.longestCommonSubsequence1("abc", "def"))
print(solution.longestCommonSubsequence2("abc", "def"))
//: [Next](@next)
