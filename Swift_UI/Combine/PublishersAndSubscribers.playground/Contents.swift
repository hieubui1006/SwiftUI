import SwiftUI
import Combine
/*
 - Publishers và Subscribers
 -> Điều quan trọng nhất cần nắm rõ trong Combine là publishers và subscribers.
 -> Một Publisher là loại có thể phân phối một chuỗi các giá trị theo thời gian và một Subscriber sẽ đăng ký với Publisher để nhận các giá trị đó. Hãy thử tạo ra một số Publishers đơn giản bằng cách sử dụng Combine:
 */




//Publishers.Sequence(sequence: [1,2,3,4])
//    .map({ $0 * 10})
//    .flatMap({ "\($0)".publisher })
//    .sink(receiveValue: {
//        print($0)
//    })


let publisher = "Combine swift".publisher
let subcrisher = publisher.sink(receiveValue: { value in
    print(value)
})
subcrisher.cancel()
