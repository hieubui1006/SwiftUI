import Combine


/* - Operators
 -> Điều làm cho Combine thực sự mạnh mẽ là , kết hợp hoặc lọc các giá trị do publishers gửi đi. Có ba operators trong Combine - Transforming, Filtering, and Combining Operators.
 -> Transforming Operator đơn giản nhất là Map Operator, nó hoạt động tương tự như Swift Map. Nó biến đổi các giá trị được phát ra từ một publisher với một chức năng nhất định.
 */


_ = Publishers.Sequence(sequence: [1,2,2,3,3,4,7])
    .map { $0 * 2 }
    .flatMap {Just($0) }
    .filter { $0.isMultiple(of: 2) }
    .dropFirst(3)
    .removeDuplicates()
    .sink(receiveValue: { value in
        print(value)
    })
