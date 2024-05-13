//
//  ContentView.swift
//  Kadai-12
//
//  Created by 松原涼一 on 2023/03/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var zeinuki = ""
    @State var zeiritsu = ""
    @State var zeikomi = 0
    @State var num1 = 0.0
    @State var num2 = 0.0
    @State var tax = 0.0
    
    //UserDefaultsキー
    let keyzeiritsu = "zeisitsu"
    
    
    var body: some View {
        VStack {
            Group {
                HStack{
                    Text("税抜金額")
                    TextField("", text: self.$zeinuki).textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("円")
                    
                }
                HStack{
                    Text("消費税率")
                    TextField("", text: self.$zeiritsu).textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("％")
                }
            }
            .font(.title3)
            .keyboardType(.numberPad)
            
            Button(action: {
                
                num1 = Double(zeiritsu) ?? 0
                //〇〇％を算出(num1)
                num1 /= 100
                //num1とzeinuki(num2)をかけて足す値段(tax)を算出
                num2 = Double(self.zeinuki) ?? 0
                tax = num1 * num2
                //税込金額(zeikomi)算出
                self.zeikomi = Int(num2 + tax)
                
                
                //Buttonがタップされたときに保存したいので、この箇所でzeiritsu入力データ保存
                UserDefaults.standard.set(self.zeiritsu, forKey: "Zeiritsu")
                
                
                
            }, label: {
                Text("計算")
            }).padding()
            HStack {
                Text("税込金額")
                
                Spacer()
                
                Text("\(zeikomi)")
                Text("円")
                
            }.font(.title3)
        }
        //VStackが表示されたときに.onApper()が実行されて保存データを取り出す
        .onAppear() {
            
//            let defaultsItem = UserDefaults.standard.string(forKey: "Zeiritsu") ?? ""
//            self.zeiritsu = defaultsItem
//
            guard let defaultItem = UserDefaults.standard.string(forKey: keyzeiritsu)
                else {
                    return
            }
            self.zeiritsu = defaultItem
        }
        .frame(width: 250)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

