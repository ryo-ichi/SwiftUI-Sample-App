//
//  ContentView.swift
//  Demo-toolbar
//
//  Created by 松原涼一 on 2023/04/09.
//

import SwiftUI

struct ContentView:View {
    
    
    var body: some View {
        NavigationView {
            
            Text("ナビゲーションバーとツールバーの2つを呼ぶと、ナビゲーションバーの領域を無視してツールバーのアイテムがレイアウト上混合してもレイアウト上は問題なく表示されてしまう。")
                .navigationBarItems(
                    leading:Text("左"),
                    trailing: Text("右")
                )
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        HStack {
                            Text("真ん中")
                            Text("真ん中")
                        }
                    }
                }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            ContentView()
            
        }
    }
    
}
