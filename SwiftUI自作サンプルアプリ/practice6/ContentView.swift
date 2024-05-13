//
//  ContentView.swift
//  practice6
//
//  Created by 松原涼一 on 2023/02/06.
//

import SwiftUI

struct ContentView: View {
    //テキストフィールドに入力したら税込額が表示される
    @State var tanka = "" //string
    var tax = 1.1//Double
    
    
    var body: some View {
        VStack {
            Text("税込額を算出できるよ！")
            TextField("値段を入力してください", text: $tanka)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250, height: 30)
            
            //計算結果の表示
            if countCheck(min:1, max:1000001) {
                Text("税込\(count())円です。")}
            else {
                Text("100万円までなら計算できるよ")
                    .foregroundColor(.red)
            }
        }
    }
    
    
    //料金に制限をかける
    func countCheck(min:Int, max:Int) -> Bool {
        guard let num = Int(tanka) else {
            return false
        }
        return (min...max).contains(num)
    }
    
    
    //料金の計算
    func count() -> Int {
        guard let  num = Double(tanka) else {
            return 0
        }
        let result = Int(num * tax)
        return result
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
