//
//  ContentView.swift
//  Sample5
//
//  Created by 松原涼一 on 2023/05/09.
//


import SwiftUI
//カウントアップをアニメーションを使って視覚的に表現

struct ContentView: View {
    
    @State var widthOrange = 10.0
    @State var height0range = 20.0
    
    @State var widthGray = 350.0
    @State var heightGray  = 20.0
    
    @State var hantei = false
    

    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: widthGray, height: heightGray)
                    .foregroundColor(.gray)
                    
                
                Rectangle()
                    .frame(width: widthOrange, height: height0range)
                    .foregroundColor(.orange)
//                    .animation(.linear(duration: 0.5), value: widthOrange)
            }
            
            
            Button(action: {
//                widthOrange += 5.0
                withAnimation(.linear(duration: 1.0)) {
                    widthOrange += 5.0
                    
                }
              
            }, label: {
                Text("カウントアップ")
            })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
