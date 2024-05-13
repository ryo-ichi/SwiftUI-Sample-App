//
//  ContentView.swift
//  Sample4
//
//  Created by 松原涼一 on 2023/05/09.
//

import SwiftUI
//Sample3をwithanimationを使って変化させる

struct ContentView: View {
    
    @State var width = 50.0
    @State var height = 50.0
    @State var hantei = false
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(.orange)
//                .animation(.linear(duration: 3.0), value: height)
            
            Button(action: {
                withAnimation(.linear(duration: 2.0)) {
                    
                    hantei.toggle()
                    
                    if hantei {
                        width = 100.0
                        height = 100.0
                    } else {
                        width = 50.0
                        height = 50.0
                    }
                    
                   
                }
              
            }, label: {
                Text("おおきくする")
            })
        
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
