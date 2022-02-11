//: [Previous](@previous)
/*:
 ## [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)
 [__String__] [__Medium__]

 Given a string `s`, find the length of the __longest substring__ without repeating characters.
 */
import BlindSwift

let solution = Solution()

assert(solution.lengthOfLongestSubstring("abcabcbb") == 3)
assert(solution.lengthOfLongestSubstring("bbb") == 1)
assert(solution.lengthOfLongestSubstring("pwwkew") == 3)
assert(solution.lengthOfLongestSubstring(" ") == 1)
//: [Next](@next)
