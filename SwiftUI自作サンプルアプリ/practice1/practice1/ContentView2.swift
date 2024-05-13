//
//  ContentView2.swift
//  practice1
//
//  Created by 松原涼一 on 2023/01/24.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        
        VStack {
            Image(systemName:"sun.max")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: 200, height: 200)
                .padding()
            Text("かんばれ！\nやればできるよ！\nきっと叶うよ！")
                .foregroundColor(.white)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.teal)
        
            
            
            
    }
}


struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
