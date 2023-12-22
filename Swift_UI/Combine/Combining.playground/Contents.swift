import Combine


/*
 -> Toán tử combining giúp kết hợp các phần tử từ các chuỗi không đồng bộ. Một số toán tử rất giống với toán tử Swift khi làm việc với mảng. Hãy để xem một số ví dụ.
 */

/* 1.  MERGE -------------
  -> Kết hợp các yếu tố từ hai publishers khác nhau cùng kiểu dữ liệu, tạo ra mội chuỗi các giá trị khác theo thời gian.
 */

let german = PassthroughSubject<String, Never>()
let italia = PassthroughSubject<String, Never>()
let euro = Publishers.Merge(german, italia)

_ = euro.sink(receiveValue: { value in
    print("\(value) is a city in europe")
})

german.send("Munich")
german.send("Berlin")
italia.send("Milano")
italia.send("Rome")


/* 1.  Combine Latest -------------
 -> Combine Latest tạo ra một publisher nhận và kết hợp các yếu tố mới nhất từ hai publisher.
 */

let filter = PassthroughSubject<String, Never>()
let text = PassthroughSubject<String, Never>()

let publisher = Publishers.CombineLatest(filter, text).map { filter, text in
    "\(filter) \(text)"
}

filter.send("AAA")
text.send("BBB")

_ = publisher.sink { value in
    print(value)
}
