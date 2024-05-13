//
//  ContentView.swift
//  Sample2
//
//  Created by 松原涼一 on 2023/05/09.
//

import SwiftUI
//rotationEffect()の設定をwithAnimationでアニメーションにしている *rotaionEffectだけではアニメーションにならない
struct ContentView: View {
    
    @State var isOn = false
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .rotationEffect(.degrees(isOn ? 0 : 360))

            Button(action: {

                withAnimation(.linear(duration: 5.0)) {
                    isOn.toggle()
                }
                
            } , label: {
                Text("まわす")
            })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
