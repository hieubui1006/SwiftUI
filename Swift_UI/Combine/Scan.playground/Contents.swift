import Combine


/* - Scan
 -> Scan hoạt động tương tự reduce trong Swift. Nó kết hợp phần tử hiện tại với giá trị cuối cùng được trả về bằng cách áp dụng hàm closure.
 */

_ = Publishers.Sequence(sequence: [1,2,3,4,5])
    .flatMap {Just($0) }
    .scan(0, +)
    .sink(receiveValue: { value in
        print(value)
    })
