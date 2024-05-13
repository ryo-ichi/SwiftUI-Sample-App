//
//  ContentView.swift
//  Sample6
//
//  Created by 松原涼一 on 2023/05/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var from = 0.0
    @State var to = 0.0
    
    @State var setTime = 5
    @State var saiSei = true
    
    var body: some View {
        
        VStack {
            ZStack {
                
                //グレー
                Circle()
                    .stroke(Color.gray, lineWidth: 8.0)
                    .frame(width:300)
                
                
                Text("\(setTime)")
                    .font(.largeTitle)
                
                
                //グリーン
                Circle()
                    .trim(from: from, to: to) //0から0,01まで表示
                    .stroke(Color.green, lineWidth: 8.0)
                    .rotationEffect(Angle(degrees: -90))
                    .frame(width:300)
            }
            
            
            
            Button(action: {
                //            saiSei.toggle()
                
                if (setTime == 5) {
                    withAnimation(.linear(duration: 5.0)) {
                        to += 1
                    }
                } else {
                    withAnimation(.default) {
                        to += 0
                    }
                    to += 0
                }
                
                
            }, label: {
                Image(systemName: saiSei ?  "play" : "pause" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
