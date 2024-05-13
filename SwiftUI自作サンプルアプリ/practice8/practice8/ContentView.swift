//
//  ContentView.swift
//  practice8
//
//  Created by 松原涼一 on 2023/02/13.
//

import SwiftUI

struct HomeView: View {
    
    @State var message = false
    @State var battleModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("みえないモンスターを倒せ！")
                    .font(.title)
                    .padding()
                HStack {
                    Image(systemName: "hand.raised.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Spacer()
                    
                    Image(systemName: "eyebrow")
                        .resizable()
                        .frame(width: 50, height: 50)
                }.frame(width: 140, height: 100)
                
                
                Button(action: {
                    
                    message = true
                    
                }, label: {
                    Text("たたかう")
                        .padding()
                        .frame(width: 150, height: 40)
                        .background(.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    
                })
                .alert(isPresented: $message) {
                    Alert(title: Text("モンスター出現！"), message: Text("戦いますか？"), primaryButton: .default(Text("はい"),action: {
                    battleModal = true
                    }),
                        secondaryButton:.cancel(Text("いいえ"), action: {
                        
                    }))
                }
                .sheet(isPresented: $battleModal){
                    battleView()
                }
                
                NavigationLink(destination: SetUpView()) {
                    Text("せってい")
                        .padding()
                        .frame(width: 150, height: 40)
                        .background(.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
