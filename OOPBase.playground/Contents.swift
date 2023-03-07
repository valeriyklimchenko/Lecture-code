import UIKit

//protocol Pet {
//    var name: String { get }
//    var spicies: String { get }
//    var sex: String { get }
//
//    func eat()
//    func sleep()
//    func spendTimeWithOwner()
//}
//
//class Dog: Pet {
//
//    var name: String
//    var spicies: String = "Dog"
//    var sex: String
//
//    var breed: String
//
//    init(name: String, sex: String, breed: String) {
//        self.name = name
//        self.sex = sex
//        self.breed = breed
//    }
//
//    func eat() {}
//    func sleep() {}
//    func spendTimeWithOwner() {}
//
//    func play() {}
//    func waveTail() {}
//    func bark() { print("Bark by bass") }
//    func bite() {}
//}
//
//class Corgi: Dog {
//
//    init(name: String, sex: String) {
//        super.init(name: name, sex: sex, breed: "Corgi")
//    }
//
//    override func bark() {
//        super.bark()
//
//        print("Bark loudly")
//    }
//
//    func beNice() {}
//}
//
//func callAllElements(in sequence: any Sequence) -> Int {
//    var i = 0
//    sequence.forEach { _ in i += 1 }
//    return i
//}
//
//callAllElements(in: [1, 2, 3, 4, 5, 6])
//callAllElements(in: "Hello world")

//protocol ATM {
//    var balance: Int { get }
//
//    func enterPin(_ pin: Int)
//    func withdraw(sum: Int) -> Int?
//}
//
//class PermataATM: ATM {
//    var balance: Int { self.checkBalance() }
//
//    var pin: Int = 0
//    func enterPin(_ pin: Int) {
//        self.pin = pin
//    }
//
//    func withdraw(sum: Int) -> Int? {
//        guard pin != 0, checkBalance() == sum else {
//            return nil
//        }
//        return sum
//    }
//
//    private func checkBalance() -> Int {
//        return 100
//    }
//
//    private func checkPin(_ pin: Int) -> Bool {
//        return true
//    }
//}
//
//class ShoppingCenter {
//
//    var atm: ATM
//
//    let legalOffice: [String]
//
//    init(atm: ATM) {
//        self.legalOffice = ["Vasya", "Egor", "Sasha"]
//        self.atm = atm
//    }
//}
//
//let shoppingATM = PermataATM()
//let center = ShoppingCenter(atm: shoppingATM)

//protocol Bus {
//
//    var people: Int { get }
//}
//
//class CityBus: Bus {
//
//    var people: Int = 0
//}
//
//var busOnTheWay: Bus = CityBus()
////busOnTheWay.people = 10
////busOnTheWay.people += 10
//print(busOnTheWay.people)

//class Drawer {
//
//    func draw(_ result: Int) {
//        print(result)
//    }
//
//    func draw(_ result: String) {
//        print(result)
//    }
//
//    func draw(_ result: Bool) {
//        print(result)
//    }
//    func draw(_ result: Double) {
//        print(result)
//    }
//}
//
//Drawer().draw(1)
//Drawer().draw(0.20)
//Drawer().draw("Hello")

//class Phone {
//
//    func ring() {
//        print("Play monophony")
//    }
//
//    func tapSMS() {
//        print("Tapping an SMS")
//    }
//}
//
//class Smartphone: Phone {
//
//    override func ring() {
//        print("Play mp3")
//    }
//
//    override func tapSMS() {
//        super.tapSMS()
//
//        print("Add emoji")
//    }
//}
//Smartphone().tapSMS()

//protocol Navigator {
//
//    var enterPlace: String { get set }
//    var checkDistance: Int { get }
//}
//
//class GoogleMaps: Navigator {
//
//    var enterPlace: String = "" {
//        didSet {
//            checkDistance = 100
//        }
//    }
//    var checkDistance: Int = 0
//
//}
//
//var googleMaps: Navigator = GoogleMaps()
//googleMaps.enterPlace = "Batu Bolong"
//print(googleMaps.checkDistance)


//enum City: Int {
//    case moscow // 0
//    case tver = 3 // 1
//    case kolpino // 2
//}
//
//enum Country: String {
//    case russia
//    case indonesia = "Indonesia"
//    case thailand = "Thailand"
//}
//
////print(City.kolpino)
////print(Country.indonesia.rawValue)
//
//let country = Country(rawValue: "Vasya")
////print(type(of: country))
////print(type(of: Country.indonesia))
////print(type(of: country?.rawValue))
////print(country)
////
////print(City.moscow.rawValue)
////print(City.tver.rawValue)
////print(City.kolpino.rawValue)
//
//enum Car {
//    case mercedes(Int)
//    case uaz
//}
//
//let car = Car.mercedes(3)
//
//switch car {
//case let .mercedes(passengers):
//    print(passengers)
//case .uaz:
//    print("uaz")
//}
//
//switch car {
//case .uaz:
//    print("uaz")
//case .mercedes:
//    print("mercedes")
//}
//
//print(country == .indonesia)
////print(car == .uaz)
//
//if case let .mercedes(passengers) = car {
//    print(passengers)
//}


//struct Profile {
//
//    let name: String = "Egor"
//    var surname: String = "Petrov" {
//        didSet {
//            print("didSet: \(oldValue), \(surname)")
//        }
//        willSet {
//            print("willSet: \(newValue)")
//        }
//    }
//
//    // let fullname: String = "Egor Petrov" // name + surname
//
////    func fullname() -> String {
////        return name + surname
////    }
//
////    var fullname: String { name + surname }
//    var fullname: String {
//        get {
//            name + surname
//        }
//    }
//
//    func sayHi() -> String { return "hi" }
//}
//
//var profile = Profile()
//profile.surname = "New surname"
//
//
//class TextField {
//
//    private var title: String = ""
//
//    var titleColor: String {
//        get {
//            return title
//        }
//        set {
//            self.title = newValue
//        }
//    }
//
//    class func printNewValue() { print("hi") }
//}
//
//TextField.printNewValue()
//Profile().sayHi()
enum Country: String {
     case russia = "Russia"
     case indonesia = "Indonesia"
     case thailand = "Thailand"
 }

 let russia = Country.russia.rawValue

 let indonesia: Country? = Country(rawValue: "Indonesia")
 print(indonesia)
 print(indonesia as Any)
 print(indonesia ?? "error")
