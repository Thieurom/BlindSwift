//: [Previous](@previous)
/*:
 ## [91. Decode Ways](https://leetcode.com/problems/decode-ways/description/)
 [__Dynamic Programming__] [__Medium__]
 */
import BlindSwift

let solution = Solution()

["12", "226", "06"].forEach {
    print("\($0) -> \(solution.numDecodings($0))")
}
//: [Next](@next)
