//
//  ContentView.swift
//  Kadai-04
//
//  Created by 松原涼一 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = 0
    
    var body: some View {
        
        VStack {
            Text("\(result)")
            
            Button(action: {
                result += 1
            }, label: {
                Text("+1").padding()
            })
            
            Button(action: {
                result = 0
            }, label: {
                Text("Clear")
            })
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
