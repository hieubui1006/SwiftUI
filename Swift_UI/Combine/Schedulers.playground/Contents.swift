import Combine
import UIKit


/* - Schedulers
 -> Một scheduler về cơ bản xác định thời điểm và cách thực hiện closure. Nó có thể thực sự hữu ích khi chúng ta, ví dụ, muốn trì hoãn việc thực hiện một chức năng cụ thể. Hãy để sử dụng lại ví dụ trước đây của chúng ta về việc kết hợp filter đã chọn với search text. Lần này chúng ta muốn tránh khi người dùng gõ nhanh và chỉ nhận các sự kiện khi có thời gian cách 0.5 giây. Chúng ta có thể sử dụng toán tử <debounce> để làm điều đó.
 */

let filter = PassthroughSubject<String, Never>()
let text = NotificationCenter.default
    .publisher(for: UITextField.textDidChangeNotification, object: filter)
    .map({ ($0.object as! UITextField).text })
    .debounce(for: .milliseconds(500), scheduler: RunLoop.main)
    .eraseToAnyPublisher()

let pub = Publishers.CombineLatest(filter, text).map { filterS, textS in
   return "\(filterS) \(textS)"
}


_ = pub.sink(receiveValue: { value in
    print(value)
})

filter.send("A")
filter.send("B")
