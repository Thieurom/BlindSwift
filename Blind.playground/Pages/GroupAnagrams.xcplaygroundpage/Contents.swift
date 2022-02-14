//: [Previous](@previous)
/*:
 ## [49. Group Anagrams](https://leetcode.com/problems/group-anagrams/)
 [__String__] [__Medium__]

 Given an array of strings `strs`, group __the anagrams__ together. You can return the answer in __any order__.

 An __Anagram__ is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 */
import BlindSwift

let solution = Solution()

let strs1 = ["eat", "tea", "tan", "ate", "nat", "bat"]
print(solution.groupAnagrams(strs1))

let strs2 = [""]
print(solution.groupAnagrams(strs2))

let strs3 = ["a"]
print(solution.groupAnagrams(strs3))
//: [Next](@next)
