//: Playground - noun: a place where people can play

import UIKit

//let a1 : Int = 10
//
//var b1 : Int = 20
//b1 = 30

//var view : UIView = UIView()
//view = UIView()
//常量的值不可修改指的是 指针不可以在再指向其他对象，但是可以通过指针拿到其他对象，修改其中的属性
let view1 : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view1.backgroundColor = UIColor.red

let btn1 : UIButton = UIButton(type: UIButtonType.custom)
btn1.backgroundColor = UIColor.blue
btn1.setTitle("Title", for: UIControlState.normal)
btn1.titleLabel?.font = UIFont.systemFont(ofSize: 16)
btn1.frame = CGRect(x: 20, y: 20, width: 60, height: 60)
view1.addSubview(btn1)

var i1 = 20
var i2 : Int = 30

let i3 : Double = Double(i1) + Double(i2)
let a1 : Int = 9
if a1 > 9 {
    print(a1)
}

let score1 : Int = 87
if score1 < 60 {
    print("不及格")
} else if score1 <= 70 {
    print("及格")
} else if score1 <= 80 {
    print("良好")
} else if score1 <= 90 {
    print("优秀")
} else {
    print("完美")
}

let view2 : UIView? = nil
if view2 != nil {
    view2!.backgroundColor = UIColor.red;
}

var a2 = 10
var b2 = 89
var result2 = a2 > b2 ? a2 : b2
print(result2)

var age : Int = 18

func online(age : Int) -> Void {
    guard age >= 18 else {
        print("go home")
        return
    }
    print("Go Net")
}
online(age: age)


let sex = 0
switch sex {
case 0:
    print("man")
case 1:
    print("Woman")
default:
    print("other")
}

switch sex {
case 0, 1:
    print("Ordinary People")
default:
    print("Other")
}
let f = 3.14
switch f {
case 3.14:
    print("pai")
default:
    print("Not pai")
}

let m = 34
let n = 23
var result = 0
let opration = "+"
switch opration {
case "+" :
    result = m + n
case "-" :
    result = m - n
case "*" :
    result = m * n
case "/" :
    result = m / n
default:
    result = 0
}

switch score1 {
case 0..<60 :
    print("Not ok")
case 60..<80 :
    print("Its ok")
case 80..<90 :
    print("Its good")
case 90...100 :
    print("Very good!")
default :
    print("Other")
}

for i in 0..<10 {
    print(i)
}
for i in 0...10 {
    //
}
//在循环中不需要用到下标
for _ in 0..<10 {
    print("hahah")
}

var a3 = 0
while a3 < 10 {
    a3 += 1
}

repeat {
    a3 += 1
}while a3 < 10

var str1 = "hello Swift"
for c in str1.characters {
    print(c)
}
let str2 = "Hello"
let str3 = "world"
let str4 = str2 + str3

let name = "why"
let age1 = 19
let info = "my name is \(name),age is \(age1)"

let min = 3
let second = 4
let time = String(format: "%02d:%02d",arguments: [min,second])
//print(time)

let mystr = "www.520it.com"
var subStr = (mystr as NSString).substring(from: 4)
subStr = (mystr as NSString).substring(to: 3)
subStr = (mystr as NSString).substring(with: NSRange(location: 4, length: 5))

var array1 : [String] = [String]()
var array2 : [AnyObject] = [AnyObject]()

var stuArray : Array<String> = [String]()
var  stuArray2 : [String] = [String]()
//stuArray
//stuArray2

//var array = ["why","lnm","asd"]
var array : Array<String>
array = ["why","lnm","asd"]

array.append("123")
array.removeFirst()
array[0] = "asdf"

for i in 0..<array.count {
    print(array[i])
}
for item in array {
    print(item)
}
for item in array[0..<2] {
    print(item)
}

var arr1 = ["why","lnm","asd"]
var arr2 = ["123", "123"]
//类型一致才可以合并,否则遍历合并
//var arr3 = arr1 + arr2

var dict1 : [String : NSObject] = [String : NSObject]()
let dict2 = ["name" : "whty","age" : 18] as [String : Any]

var dict3 : Dictionary<Int, String>
dict3 = [12 : "qwe"]
var dict4 : [Int : String]
dict4 = [12 : "qwe"]
var dict = ["name" : "why", "age" : 18] as [String : Any]
for value in dict {
    print(value)
}
for (key, value) in dict {
    print(key)
    print(value)
}

//字典不可以相加合并
var dict5 = ["name" : "123","age" : 20] as [String : Any]
var dict6 = ["height" : 1.87 , "Num": "+89796"] as [String : Any]
for (key, value) in dict5 {
//    dict6[key]  = value
}

//元组
("1001", "asd", 12, 34)

let error = (404, "Not Found")
print(error.0)
print(error)

let error1 = (errorCode : 404, errorInfo : "Not Found")
error1.errorCode
error1.errorInfo

let (errorCode, errorInfo) = (404, "Not Found")
errorCode
errorInfo

//optional
//let string : Optional<String> = nil
//let string : String? = nil
//加包
var string : Optional<String> = nil
string = "hello world"
//print(string ?? "qwe")
//解包
//print(string!)

//string = nil
//如果可选为nil，则不能=强制解包
//print(string!)
if string != nil {
        //
}
//可选绑定
if let str = string {
    print(str)
}

//let url : NSURL = NSURL(string: "www.520it.com")
let url : NSURL? = NSURL(string: "www.520it.com")

if  let tempUrl = url {
    let request = NSURLRequest(url: tempUrl as URL)
}

func about() ->Void {
    print("")
}
func about1() {
    
}
func callPhone(phone : String) {
    print(phone)
}
func readMessage() -> String {
    return "string"
}
func sum(num1 : Int , num2 : Int) -> Int {
    return num1 + num2
}

var resultNum = sum(num1: 20, num2: 10)
//print(resultNum)    

func ride (num1 : Int, num2 : Int, num3 : Int) -> Int {
    return num1 * num2 * num3
}
//var resultRide = ride(num1: 10, num2: 2, num3: 20)

//注意：1
//内部参数：在函数内部看到的参数
//外部参数：在函数外面看到的参数
//可以给参数设置标签：在变量名前面添加标签即可
func ride2(num1 : Int, a num2 : Int, b num3 : Int) -> Int {
    return num1 * num2  * num3
}
ride2(num1: 1, a: 2, b: 3)
//如果不想要外部参数，可以在参数名称前加_
func ride3(num1 : Int, _ num2 : Int) -> Int {
    return num1 * num2
}
ride3(num1: 2, 4)

//注意2：默认参数，如果没有传入具体参数，可以使用默认参数
func makeCoffee(type : String = "Kabuqinuo") -> String {
    return "make a cup of \(type) coffee"
}

makeCoffee()
makeCoffee(type: "Natie")

//Attention:3  可变参数 a.所有参数必须有相同的类型，b、可以在参数类型后面添加...的方式实现可变参数
func sumN(numbers : Double...) -> Double {
    var total : Double = 0.0
    for number in numbers {
        total += number
    }
    return total
}
//sumN(numbers: 20,30,40)
//sumN(numbers: 30,79,3,3,4,4)


//Attention : 4 ，引用类型（指针的传递）
//默认是参数的值传递；如果想改变外面的变量则需要指针（地址）传递，必须是变量
//Swift提供的inout 关键字可以实现

//值传递
func swap( a : Int, b : Int)
{
    var a = a
    var b = b
    let temp = a;
    a = b
    b = temp
    print("------a : \(a), b : \(b)")
}

var a5 = 10
var b5 = 20
//swap(a: a5, b: b5)
//print("a5 : \(a5), b5: \(b5)")

//指针传递
func swap1( a : inout Int, b : inout Int) {
    let temp = a
    a = b
    b = temp
    print("------a : \(a), b : \(b)")
}
//swap1(a: &a5, b: &b5)
//print("a5:\(a5), b5 :\(b5)")



class Student : NSObject {
    var age : Int = 0
    var name : String?
    var chineseScore : Double = 0.0
    var mathScore : Double = 0.0
}

let stu = Student()
stu.age = 10
stu.name = "asd"
stu.chineseScore = 89.0
stu.mathScore = 344.9

class Student1 : NSObject {
    //存储属性
    var age : Int  = 0
    var name : String?
    var chineseScore :Double = 0.0
    var mathScore = 0.0
    //计算属性
    var averageScore : Double {
        get {
            return (chineseScore + mathScore) * 0.5
        }
        
//        set {
//            self.averageScore = newValue
//        }
    }
    
    //类属性
    static var courseCount : Int = 0
}

let stu1 = Student1()
Student1.courseCount = 234

//;监听属性的改变
//使用willSet与didSet，只有在属性第一次被设置时才会调用，初始化时不会去调用这些监听方法
class Person : NSObject {
    var name : String? {
        willSet {
            if name != nil {
                print("willSetName: \(name)")
            }
        }
        didSet {
            print("didSet name : \(name)")
        }
    }
}

//let p = Person()
//p.name = "asd"


//类的构造函数-必然会调用的
//继承自NSObject的，可对父类构造函数重写
//构造函数使用：类的属性必须有值，可以在构造函数中赋值（或者在初始化时赋值）
class Person2 : NSObject {
    var name : String
    var age : Int
    override init() {
        name = "--"
        age = 13
    }
}
//let p1 = Person2()
//print(p1.name, p1.age)

//初始化赋值
class Person3 : NSObject {
    var name : String
    var age : Int
    //自定义构造函数，会覆盖父类的init（）
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
}
//初始化时给类属性赋值
let p2 = Person3(name: "hello", age: 14)
//print(p2.name, p2.age)

//字典转模型<初始化时传入字典>
class Person4 : NSObject {
    var name : String
    var age : Int
    init(dict : [String : NSObject]) {
        name = dict["name"] as! String
        age = dict["age"] as! Int
    }
}
//let dict10 = ["name" : "why", "age" : 18] as [String : Any]
//let p = Person4(dict: dict10 as! [String : NSObject])
class Person5 : NSObject {
    var name : String
    var age : Int
    init(dict : [String : NSObject]) {
        name = dict["name"] as! String
        age = dict["age"] as! Int
    }
}

//字典转模型（利用KVC）,必须调用super.init()
//但是KVC不能保证给所有属性赋值，所以属性要有默认值，基本属性默认为0；对象或结构体定义为可选类型
//class Person6 : NSObject {
//    var name : String?
//    var age : Int = 0
//    init(dict : [String : NSObject]) {
//        //先初始化对象
//        super.init()
//        //调用对象的KVC方法转模型
//        setValuesForKeys(dict)
//    }
//}
//let dict10 = ["name" : "why", "age" : 13] as [String : Any]
//let p10 = Person6(dict: dict10 as! [String : NSObject])
//p10.name
//p10.age
//class Person6 : NSObject {
//    var name : String?
//    var age : Int = 0
//    init(dict : [String : NSObject]) {
//        super.init()
//        setValuesForKeys(dict)
//    }
//}


/*
    闭包
    用于回调的特殊函数
 */














