//
//  ContentView.swift
//  Kadai-06
//
//  Created by 松原涼一 on 2023/03/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var target: Int
    @State var value = 0.0
    @State private var num = 0
    
    @State var alert = false
    @State var alertResult = ""
    
    init() {
        self.target = Int.random(in:1...100)
        
    }

    var body: some View {
        VStack {
            Text("\(target)")
                .font(.system(size: 32))
                .padding()
            
            Slider(value: $value,
                   in: 1...100
            )
            .frame(width: 300)
            HStack {
                Text("1")
                Spacer().frame(width: 260)
                Text("100")
                
            }
            
            Button(action: {
                num = Int(value)
                if (target == num) {
                    alert = true
                    alertResult = "あたり！"
                } else {
                    alert = true
                    alertResult = "はずれ！"
                }
                
            }, label: {
                Text("判定！")
                    .alert(isPresented: $alert) {
                        
                        Alert(title: Text("結果"),
                              message: Text("\(alertResult)\nあなたの値：\(num)"),
                              dismissButton: .default(Text("再挑戦"),action: {
                            targetRandom()
                            
                        }))
                    }
                    .padding()
            })
            
            
            Spacer()
            
        }
    }
    //再挑戦タップ後に実行
    func targetRandom(){
        value = 0.0
        self.target = Int.random(in:1...100)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
