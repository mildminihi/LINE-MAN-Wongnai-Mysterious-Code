import UIKit
import Foundation

var whatIsIt: String {
    let secret = "aWFuZ25vVzpOQU06RU5JTDp0YTpzdTpuaW9K"
    if let data = Data(base64Encoded: secret), let decode = String(data: data, encoding: .utf8) {
        return String(decode.reversed())
    } else {
        return "Can't decode secret"
    }
}

print(whatIsIt)
