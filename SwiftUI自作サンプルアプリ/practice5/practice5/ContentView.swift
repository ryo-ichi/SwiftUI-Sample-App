//
//  ContentView.swift
//  practice5
//
//  Created by 松原涼一 on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    
    @State  var count = 0
    @State var powerimage = Image("power_2")
    
    var body: some View {
        VStack {
            Text(powerimage)
            Text(String(count))
                .padding()
            Button(action: {
                count += 1
                
                if (count == 4) {
                    powerimage = Image("power_1")
                } else if (count == 5) {
                    powerimage = Image("power_2")
                    
                } else if (count == 8) {
                    powerimage = Image("power_1")
                    
                } else if (count == 9) {
                    powerimage = Image("power_2")
                } else if (count == 12) {
                    powerimage = Image("power_3")
                }
                
                if count >= 30 {
                    count = 0
                    
                } else if (count == 1) {
                    powerimage = Image("power_2")
                }
                
                    
            }, label: {
                Text("パワーをもらう")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

