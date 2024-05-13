//
//  ContentView.swift
//  practice1
//
//  Created by 松原涼一 on 2023/01/24.
//元気のないときに使うと、少し元気になるアプリ

import SwiftUI

struct ContentView: View {
  @State  var viewOn = false

    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
                .padding()
            Button(action: {
                viewOn = true
            }, label: {
                Text("話しかける")
                    .foregroundColor(.white)
            })
            
            if viewOn {
                ContentView2()
            }
            
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView2()
            
        }
    }
}
