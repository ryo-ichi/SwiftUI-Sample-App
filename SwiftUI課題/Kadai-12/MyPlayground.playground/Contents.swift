import SwiftUI


// 演算関数 税込金額算出 税込がInt型で終わらないといけない

func calc(zeinuki:String, zeiritsu:String) -> Int {
    var zeikomi = 0
    var num1 = 0.0
    var num2 = 0.0
    var tax = 0.0
    
    num1 = Double(zeiritsu) ?? 0
    //〇〇％を算出(num1)
    num1 = num1 / 100
    //num1とzeinuki(num2)をかけて足す値段(tax)を算出
    num2 = Double(zeinuki) ?? 0
    tax = num1 * num2
    //税込金額(zeikomi)算出
    zeikomi = Int(num2 + tax)
    return zeikomi
}
//Int型1050円
calc(zeinuki: "1000", zeiritsu: "5")
