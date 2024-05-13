//
//  ContentView.swift
//  practice3
//
//  Created by 松原涼一 on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    @State var isModal = false
    
    var body: some View {
        VStack {
            Text("進化させてみよう！！")
                .padding()
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.gray)
                        Text("NO image")
                    }.padding()
                    
                    Button (action: {
                        isModal.toggle()
                    }, label: {
                        Text("進化させる")
                    }).sheet(isPresented:$isModal) {
                        ContentView2(isModal: $isModal)
                        
                    }
                }
                Text("コイキング(進化前)")
            }
        }
    }
}


struct ContentView2: View {
    @Binding var isModal:Bool
    
    var body: some View {
        VStack {
            Text("進化したよ！！")
                .padding()
            VStack {
                HStack {
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.gray)
                        Text("NO image")
                    }.padding()
                    Button(action: {
                        isModal.toggle()
                    }, label: {
                       Text("進化を戻す")
                    })
                }
                Text("ギャラドス(進化後)")
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
