//
//  ContentView.swift
//  Practice7
//
//  Created by 松原涼一 on 2023/02/04.
//

import SwiftUI



struct ContentView: View {
    @Binding var buttonDataItem: ButtonData
    
    
    var body: some View {
        Toggle(isOn: $buttonDataItem.IsChecked) {
            Text(buttonDataItem.name)
        }
        .fixedSize()
    }
}





struct ContentViewWrapper: View {
    @State var buttonDateItem1  = ButtonData(name: "機内モードA", IsChecked: false)
    @State var buttonDateItem2  = ButtonData(name: "機内モードB", IsChecked: false)
    @State var buttonDateItem3  = ButtonData(name: "機内モードC", IsChecked: false)
    @State var buttonDateItem4  = ButtonData(name: "機内モードD", IsChecked: false)
    
    var body: some View {
        
        //データ設計をもとに作ったインスタンスの値を(buttonDataItem1の変数の値)buttonDataItemに参照させる。参照させると何が起こるのか？buttonDataItemに値が渡されてViewが構築する
        VStack {
            ContentView(buttonDataItem: $buttonDateItem1)
            ContentView(buttonDataItem: $buttonDateItem2)
            ContentView(buttonDataItem: $buttonDateItem3)
            ContentView(buttonDataItem: $buttonDateItem4)

        }
                
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewWrapper()
    }
}
