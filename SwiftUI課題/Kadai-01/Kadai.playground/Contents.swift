//Kadai01
//for num in 1...9 {
//    var result = 100
//    result += num
//    print(result)
//}


//struct KeisanData {
//    var a = 1
//    var b = 2
//    var c = 3
//    var d = 4
//    var e = 5
//}

struct KeisanData {
    var a = "1"
    var b = "2"
    var c = "3"
    var d = "4"
    var e = "5"
}


//for文で作る String型のデータソースで出力15

var keisanData = KeisanData()
var goukeiList  = [keisanData.a, keisanData.b, keisanData.c, keisanData.d, keisanData.e]


func calc() {
    var result:Int
    var sum = 0
    for num in goukeiList {
        result = Int(num)! //オプショナルバリューはアンラップしてから代入
        sum = sum + result
        
        print(sum)
    }
}
calc()//出力15






////for文で作る Int型のデータソースで出力15
//
//var keisanData = KeisanData()
//var goukeiList  = [keisanData.a, keisanData.b, keisanData.c,  keisanData.d, keisanData.e]
//
//func calc() {
//    var result = 0
//    for num in goukeiList {
//
//        result += num
//        print(result)
//    }
//}
//calc()//出力15




////強制アンラップでオプショナル整数から整数に変換し、二項式で使えるようにした
//var keisanData = KeisanData()
//func calc()  {
//    let aa = Int(keisanData.a)
//    let bb = Int(keisanData.b)
//    let cc = Int(keisanData.c)
//    let dd = Int(keisanData.d)
//    let ee = Int(keisanData.e)
//
//        let result = aa! + bb! + cc! + dd! + ee!
//        print(result)
//    }
//
//calc() //出力15






















////参考例
//let a: Int? = 1
//let b: Int? = 2
//
//if let first = a, let second = b {
//    print(first < second)
//}



////文字列を連結してキャストしているので、連結前にキャストすれば良い nilでない場合にキャストして変数に格納する構文を作る。nilでない場合にkeisanData.aを変数aaに格納するという構文を作り、構文内でデータによって格納する変数を分岐する方法を探す
//var keisanData = KeisanData()
//func calc()  {
//
//    //Any型(非オプショナル型)へキャストしてくださいと警告
//    print(Int(keisanData.a))
//}
//calc() //出力15










////文字列を連結してキャストしているので、連結前にキャストすれば良い nilでない場合にキャストして変数に格納する構文を作る。nilでない場合にkeisanData.aを変数aaに格納するという構文を作り、構文内でデータによって格納する変数を分岐する方法を探す
//var keisanData = KeisanData()
//func calc() {
//    let result = Int(keisanData.a)
//    print(result)
//}
//calc() //出力15











//
//
//
//















