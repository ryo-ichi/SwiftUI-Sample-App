//
//  ContentView.swift
//  Kadai-13
//
//  Created by 松原涼一 on 2023/04/03.
//
//


import SwiftUI

struct CheckItem {
    var name: String
    var hantei :Bool
}


struct CheckItemView:View {
    
    @Binding var checkItem: CheckItem
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "checkmark")
                    .opacity(checkItem.self.hantei ? 1 : 0)
                Text(checkItem.self.name)
            }
        }
    }
}


struct ContentView:View {
    
    @State var checkItems = [
        CheckItem (name: "りんご", hantei: false),
        CheckItem(name: "みかん", hantei: true),
        CheckItem(name: "バナナ", hantei: false),
        CheckItem(name: "パイナップル", hantei: true)
    ]
    
    var body: some View {
        List {
            ForEach(checkItems.indices, id: \.self) { index in
                CheckItemView(checkItem: $checkItems[index])
            }
        }
    }
}

//CheckItem(アイテム1つバインド)Viewプレビュー表示用
struct PreviewWapper :View {
    
    @State var checkItem1 = CheckItem(name: "りんご", hantei: false)
    @State var checkItem2 = CheckItem(name: "みかん", hantei: true)
    @State var checkItem3 = CheckItem(name: "バナナ", hantei: false)
    @State var checkItem4 = CheckItem(name: "パイナップル", hantei: true)
    
    var body: some View {
        VStack {
            CheckItemView(checkItem: $checkItem1)
            CheckItemView(checkItem: $checkItem2)
            CheckItemView(checkItem: $checkItem3)
            CheckItemView(checkItem: $checkItem4)
                          
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWapper()
        ContentView()
    }
}
