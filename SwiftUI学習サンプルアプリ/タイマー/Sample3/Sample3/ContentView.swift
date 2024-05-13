//
//  ContentView.swift
//  Sample3
//
//  Created by 松原涼一 on 2023/05/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var from = 0.0
    @State var to = 0.0
    
    @State var count = 0
    @State var start = true
    @State var timer:Timer?
    
    
    
    var body: some View {
        
        VStack {
            ZStack {
                
                //グレー
                Circle()
                    .stroke(Color.gray, lineWidth: 35.0)
                    .frame(width:300)
                
                
                VStack {
                    Text("\(count)")
                        .font(.system(size:65))
                        .fontWeight(.bold)
                    
                    Text("of 10")
                        .font(.title)
                }
                
                
                //グリーン
                Circle()
                    .trim(from: from, to: to) //0から0,01まで表示
                    .stroke(Color.green, lineWidth: 35.0)
                    .rotationEffect(Angle(degrees: -90))
                    .frame(width:300)
            }
            
            
            
            HStack {
                Button(action: {
                    //start値がtrueではないとき、タイマーを起動。かつ、countが10になったときにタイマーをストップする
                    self.start.toggle()
                    if (!self.start) {
                        startRepeat()
                    } else {
                        stopRepeat()
                    }
                    
                    
                    
                }, label: {
                    HStack {
                        Image(systemName: start ?  "play.fill" : "pause.fill" )
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                        
                        Text(start ? "play": "pause")
                    }
                })
                
                
                .padding()
                
                //リセットボタン
                Button(action: {
                    count = 0
                    self.start.toggle()
                    stopRepeat()
                    
                    //リセットボタンタップ後アニメーション
                    withAnimation() {
                        to = 0
                    }
                    
                    
                }, label: {
                    HStack {
                        Image(systemName: "goforward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                        
                        Text("Reset")
                    }
                })
            }
        }
    }
    
    
    
    
    
    
    //star repeatボタンタップで実行 10以上はカウントアップしない
    func startRepeat() {
        timer = Timer.scheduledTimer(withTimeInterval: 1,
                                     repeats: true,
                                     block: {_ in
            if (self.count != 10) {
                self.count += 1
                // 10の10分の1 1秒に0.1うまる
                withAnimation() {
                    to += 0.1
                }
                // countが10になったときの実行文 カウントとアニメーションを0に戻し、ボタン反転
            } else if (count == 10) {
                withAnimation() {
                    to = 0
                }
                count = 0
                stopRepeat()
                self.start.toggle()
            }
        })
    }
    
    
    
    //今起動中のタイマーを止めるメソッド
    func stopRepeat(){
        timer?.invalidate()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
