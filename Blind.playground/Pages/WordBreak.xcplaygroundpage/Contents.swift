//: [Previous](@previous)
/*:
 ## [139. Word Break](https://leetcode.com/problems/word-break/description/)
 [__Dynamic Programming__] [__Medium__]
 */
import BlindSwift

let solution = Solution()

let wordsAndDicts = [
    "leetcode": ["leet", "code"],
    "applepenapple": ["apple", "pen"],
    "catsandog": ["cats", "dog", "sand", "and", "cat"]
]

wordsAndDicts.forEach {
    print("\"\($0.key)\": \($0.value) => \(solution.wordBreak($0.key, $0.value))")
}
//: [Next](@next)
