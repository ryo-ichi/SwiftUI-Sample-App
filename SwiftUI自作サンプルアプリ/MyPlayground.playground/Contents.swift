
//import UIKit
//
//protocol DateSource: AnyObject {
//    func items() -> [String]
//}
//
//class  Printer {
//    //変数dateSouceに対してFruitDataSourceのデータを持たせてあげる(データとは？ → クラスFruitDataSourceが持つitems())
//
//    //    var dataSouce: PersonDateSource? = nil
//    //    var dataSouce: FruitDateSource? = nil
//   weak var dataSource: DateSource? = nil
//    func printList() {
//        //もしdataSouceがnilでないときは、dataSouceをアンラップして定数dataSouceに代入し定数dataSouceを使って{}内の処理実行
//        if let dataSource = dataSource {
//            let items = dataSource.items()
//            for item in items {
//                print(item)
//            }
//        } else {
//            //dataSouceの値がnilだとelse文が実行
//            print("dataSource ha nil です")
//
//        }
//    }
//}
//
//
//class FruitDateSource: DateSource {
//
//    func items() -> [String] {
//        return ["りんご","みかん","バナナ"]
//    }
//}
//
//class PersonDateSource: DateSource {
//    func items() -> [String] {
//        return ["さとう","すずき","たなか"]
//
//    }
//}
//
//class AnimalDataSource: DateSource {
//    func items() -> [String] {
//        return ["犬","猫","鳥"]
//    }
//}
//
//
//
//////Pinterをインスタンス化してメンバ変数dateSouceがFruitDateSource型の変数によりPrinter()のインスタンスから呼び出し書き換えが可能
//var printer = Printer()
////printer.dataSource = FruitDateSource()//ここでnilが入っていたdateSouceにFruitDateSourceという値入ることでif let挙動
////printer.dataSouce = PersonDateSource()
//let animalDataSource = AnimalDataSource()
//printer.dataSource = animalDataSource//共参照
//printer.printList()












struct keisan {
    var textFieldOne = ""
    var textFieldTwo = ""
    var num:Int
    
    var result = "Label"
    
    func calc() -> Int {
        if let num = Int(textFieldOne + textFieldTwo) {
            return num
        } else {
            return -1
        }
    }
}



//calc関数はInt型の戻り値を返さないといけない
//String型の値はキャストしてから演算をする
//numを使ってnilでないときは、プロパティの値をInt型にキャスト後にアンランプして演算した値がnumに格納される処理ができている。
//関数の戻り値がInt型のため、returnの値をキャストして返すことはできない
//Text渡す値として関数を持たせることはできない







