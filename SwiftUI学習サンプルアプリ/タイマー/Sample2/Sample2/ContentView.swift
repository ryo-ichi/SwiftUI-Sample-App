//
//  ContentView.swift
//  Sample2
//
//  Created by 松原涼一 on 2023/05/09.
//

import SwiftUI

//サンプル


//タイマーと数値と連動してゲージが溜まっていくアプリ

struct ContentView: View {
    
    @State var widthOrange = 10.0
    @State var height0range = 20.0
    
    var body: some View {
        VStack {
            
            ProgressBar()
            
        }
    }
}

struct ProgressBar: View {
    
    @State var widthOrange = 0.0
    @State var height0range = 20.0
    
    @State var widthGray = 350.0
    @State var heightGray  = 20.0
    
    @State var countText = 10 //設定秒数
    @State var count = 0
    @State var timer:Timer?
    
    
    var body: some View {
        VStack {
            Text("設定秒数：\(countText)")
            Text("\(count)")
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: widthGray, height: heightGray)
                    .foregroundColor(.gray)
                
                
                Rectangle()
                    .frame(width: widthOrange, height: height0range)
                    .foregroundColor(.orange)
                
            }
            
            HStack {
                //スタートボタン　設定秒数でカウントがストップ
                Button(action: {
                    
                    startRepeat()
                    
                    
                    
                    withAnimation(.linear(duration: 10.0)) {
                        widthOrange += 350
                        
                    }
                }, label: {
                    Text("スタート")
                })
                
                //停止ボタン
                Button(action: {
                    
                    stopRepeat()
                    
                }, label: {
                    Text("停止")
                })
                
                //リセットボタン
                Button(action: {
                    
                    stopRepeat()
                    count = 0
                    widthOrange = 0
                    
                }, label: {
                    Text("リセット")
                })
                
            }
        }
    }
    
    //タイマースタート 設定秒数countTextに10を格納 10秒設定
    func startRepeat() {
        timer = Timer.scheduledTimer(withTimeInterval: 1,
                                     repeats: true,
                                     block: {_ in
            
            if (self.count != countText) {
                self.count += 1
            } else {
                stopRepeat()
            }
        })
    }
    
    //今起動中のタイマーを止めるメソッド
    func stopRepeat() {
        timer?.invalidate()
    }
    
    
    
    
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }
