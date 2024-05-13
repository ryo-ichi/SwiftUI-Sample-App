//
//  ContentView.swift
//  practice2
//
//  Created by 松原涼一 on 2023/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var result = "〇〇大学"
    
    var body: some View {
        
        VStack {
            Text("日本で一番頭の良い大学がわかるよ!!")
            
            Text(result)
            
            Button(action: {
                result = "東京大学だよ"
                
            }, label: {
                Text("みてみる")
            })
            
            
            HStack {
                Image(systemName:"graduationcap")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .padding()
                
                Image(systemName:"pencil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .padding()
                    
            }.padding(.top, 150)
            
            
        }
    }
}
    
   
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

