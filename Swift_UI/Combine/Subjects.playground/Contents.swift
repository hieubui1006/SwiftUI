import Combine

/*
 Subject về cơ bản là 1 publisher để bạn có thể subscribe nhưng bạn có thể gửi events bằng cách sử dụng hàm send().

 Có 2 loại subjects:

 -> PassthroughSubject: Nếu bạn subscribe thì bạn nhận được giá trị sau khi subscribe.
 -> CurrentValueSubject: Bạn nhận được cả giá trị gần nhất trước khi subscribe.
 */


/// Nhận giá trị sau khi subcribe ======================
let subject = PassthroughSubject<String, Never>()
let publisher = subject.eraseToAnyPublisher()

let subscriber = publisher.sink(receiveValue: { value in
    print(value)
})

subject.send("Combine") //The Subscriber will print "Combine"
subject.send("Swift")   //The Subscriber will print "Swift"

let subscriber2 = publisher.sink(receiveValue: { value in
    print(value + "1")
})
subject.send("all") //The Subscriber will print "Combine"



/// sẽ nhận giá trị khởi tạo mặc định trước khi subcribe các giá trị khác ============
let currentSubject = CurrentValueSubject<String, Never>("012")
let pub = currentSubject.eraseToAnyPublisher()

let subscriberSubject = pub.sink(receiveValue: { value in
    print(value)
})

currentSubject.send("Combine+ Subject") //The Subscriber will print "Combine"
currentSubject.send("Swift+ Subject")   //The Subscriber will print "Swift"


