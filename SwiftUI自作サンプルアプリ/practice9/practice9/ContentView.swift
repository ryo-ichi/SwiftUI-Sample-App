//
//  ContentView.swift
//  practice9
//
//  Created by 松原涼一 on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var Anser = "この赤い食べ物なーんだ？"
    
    var body: some View {
        VStack{
            Text(Anser)
            Button(action: {
                Anser = "トマト"
            }, label: {
                Text("答えを見る")
            })
        }
        
    }
    
    func redPrinter() -> String {
        return "りんご"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
