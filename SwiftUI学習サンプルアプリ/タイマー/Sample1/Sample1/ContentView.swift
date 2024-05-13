//
//  ContentView.swift
//  Sample1
//
//  Created by 松原涼一 on 2023/05/09.
//

import SwiftUI

struct ContentView: View {
    @State var timer :Timer?
    @State var countText  = "0"
    @State var count = 0
    
    var body: some View {
        
        
        
        VStack {
            
            Text(countText)
            
            Button(action: {
                
                startTimer()
                
            }, label: {
                Text("timer")
            })
            .padding()
            
            Button(action: {
                
                startRepeat()
                
            }, label: {
                Text("start repeat")
                
            })
            .padding()
            
            Button(action: {
                
                stopRepeat()
                
            }, label: {
                Text("stop repeat")
            })
            .padding()
        }
        Text("Hello, world!")
    }
    
    
    //数値をText表示するメソッド
    func updateCountText() {
        countText = String(count)
    }
    
    //timerボタンタップで実行
    func startTimer () {
        count = 0
        updateCountText()
        timer = Timer.scheduledTimer(withTimeInterval: 1,
                                     repeats: false,
                                     block: {_ in
            self.count += 1
            updateCountText()
        })
    }
    
    //star repeatボタンタップで実行
    func startRepeat() {
        count = 0
        updateCountText()
        timer = Timer.scheduledTimer(withTimeInterval: 1,
                                     repeats: true,
                                     block: {_ in
            self.count += 1
            updateCountText()
        })
    }
    //今起動中のタイマーを止めるメソッド
    func stopRepeat (){
        timer?.invalidate()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
