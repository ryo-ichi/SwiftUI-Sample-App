//
//  ContentView.swift
//  Kadai-07
//
//  Created by 松原涼一 on 2023/03/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTag = 1
    @State var result = "Label"
    
    var body: some View {
        TabView(selection: $selectedTag) {
            UpView()
                .tabItem() {
                    Text("item 1")
                }
            
            DownView()
                .tabItem() {
                    Text("item 2")
                }
        }
    }
}


struct UpView: View {
    
    
    
    @State var upTextOne = ""
    @State var upTextTwo = ""
    @State var result = "Label"
    
    //キーボードが出ている状態でfalseが入ると閉じる処理
    @FocusState var forus:Bool
    
    var body: some View {
        
        
        
        ZStack {
            
            Rectangle()
                .fill(.mint)
            
            VStack {
                Group {
                    TextField("", text: $upTextOne)
                    TextField("", text: $upTextTwo)
                }
                .keyboardType(.numberPad)
                .frame(width: 110)
                .textFieldStyle(.roundedBorder)
                .focused($forus)
                
                Button(action: {
                    
                    //＋演算
                    let upTextOne = Int(upTextOne) ?? 0
                    let upTextTwo = Int(upTextTwo) ?? 0
                    result = "\(upTextOne + upTextTwo)"
                    
                    //キーボードが出ている状態でfalseが入ると閉じる処理
                    self.forus = false
                    
                    
                    
                }, label: {
                    Text("Button")
                }
                )
                .padding()
                Text("\(result)")
                
                Spacer()
            }
            .padding()
        }
    }
}



struct DownView: View {
    
    
    
    @State var downTextOne = ""
    @State var downTextTwo = ""
    @State var result = "Label"
    
    //キーボードが出ている状態でfalseが入ると閉じる処理
    @FocusState var forus:Bool
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(.orange)
            
            VStack {
                Group {
                    TextField("", text: $downTextOne)
                    TextField("", text: $downTextTwo)
                }
                .keyboardType(.numberPad)
                .frame(width: 110)
                .textFieldStyle(.roundedBorder)
                .focused($forus)

                Button(action: {
                    
                    //-演算
                    let upTextOne = Int(downTextOne) ?? 0
                    let upTextTwo = Int(downTextTwo) ?? 0
                    result = "\(upTextOne - upTextTwo)"
                    
                    //キーボードが出ている状態でfalseが入ると閉じる処理
                    self.forus = false
                    
                    
                }, label: {
                    Text("Button")
                }
                )
                .padding()
                Text("\(result)")
                
                Spacer()
            }
            .padding()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
