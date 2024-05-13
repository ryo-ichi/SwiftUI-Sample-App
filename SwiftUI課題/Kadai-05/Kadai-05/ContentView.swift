//
//  ContentView.swift
//  Kadai-05
//
//  Created by 松原涼一 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    @State var leftTextField = ""
    @State var rightTextField = ""
    
    @State private var isError:Bool = false

    @State var alertMessage = ""
    
    @State private var result = ""
    
    
    
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("", text: $leftTextField)
                Text("÷")
                TextField("", text: $rightTextField)
            }
            .frame(width: 220)
            .keyboardType(.numberPad)
            .textFieldStyle(.roundedBorder)
            
            Button(action: {
                
                //オプショナルInt型定数
                let leftTextField = Double(self.leftTextField)
                let rightTextField = Double(self.rightTextField)
                
                switch (leftTextField, rightTextField) {
                case (nil, _):
                    isError = true
                    alertMessage = "割られる数を入力してください"
                case (_, nil):
                    isError = true
                    alertMessage = "割る数を入力してください"
                    
                case (_, 0):
                    isError = true
                    alertMessage = "割る数には0以外を入力してください"
                    
                //アンラップと演算
                case (.some(let l), .some(let r)):
                    result = "\(l / r)"
                    
                default:
                        result = "計算できません"
                }
                
//                //左テキストフィールド
//                let leftTextField = Int(self.leftTextField)
//
//                switch leftTextField {
//                case nil:
//                    isError = true
//                    alertMessage = "割られる数を入力して下さい"
//
//                default:
//                    result = "計算できません"
//                }
//
//
//
//                //右テキストフィールド
//                let rightTextField = Int(self.rightTextField)
//
//                switch rightTextField {
//
//                case 0 :
//                    isError  = true
//                    alertMessage = "割る数には０以外を入力してください"
//
//                case nil:
//                    isError = true
//                    alertMessage = "割る数を入力して下さい"
//
//                default:
//                    result = "計算できません"
//                }
                
                    
                

//                if let wapperLeftTextField  = leftTextField , let wapperRightTextField = rightTextField {
//                    result = "\(wapperLeftTextField / wapperRightTextField)"
//                } else {
//                    result = "計算できません"
//                }
            
            }, label: {
                Text("計算")
                    .padding()
            }).alert(isPresented: $isError) {
                Alert(title: Text("課題５"), message: Text(alertMessage)
            )}
            
            Text("\(result)")
                .frame(width: 220,alignment: .leading)
            
                

        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
