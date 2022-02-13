//: [Previous](@previous)
/*:
 ## [242. Valid Anagram](https://leetcode.com/problems/valid-anagram/)
 [__String__] [__Easy__]

 Given two strings `s` and `t`, return `true` if `t` _is an anagram of `s`, and false otherwise_.

 An __Anagram__ is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 */
import BlindSwift

let solution = Solution()

let s1 = "anagram"
let t1 = "nagaram"
assert(solution.isAnagram(s1, t1) == true)

let s2 = "rat"
let t2 = "car"
assert(solution.isAnagram(s2, t2) == false)
//: [Next](@next)
