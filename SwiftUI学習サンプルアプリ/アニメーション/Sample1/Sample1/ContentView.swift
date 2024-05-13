//
//  ContentView.swift
//  Sample1
//
//  Created by 松原涼一 on 2023/05/09.
//

import SwiftUI
//ボタンタップでアイコンがフェードアウト
struct ContentView: View {
    
    @State var isShow = true
    
    var body: some View {
        VStack {
            Image(systemName: "face.smiling")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .opacity(isShow ? 1.0 : 0.0)
                .animation(.easeInOut(duration:3.0), value: isShow)
            
            Button(action: {
                isShow.toggle()

            }, label: {
                Text("消す")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
