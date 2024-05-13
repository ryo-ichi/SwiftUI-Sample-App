//
//  ContentView.swift
//  Kadai-14
//
//  Created by 松原涼一 on 2023/04/04.
//

import SwiftUI


struct ContentView:View {
    
    @State var isModal = false
    @State var newName = ""
    @State var checkItems = [
        CheckItem (name: "りんご", hantei: false),
        CheckItem(name: "みかん", hantei: true),
        CheckItem(name: "バナナ", hantei: false),
        CheckItem(name: "パイナップル", hantei: true)
    ]
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(checkItems.indices, id: \.self) { index in
                    CheckItemView(checkItem: $checkItems[index])
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                        isModal.toggle()
                        
                    }, label: {
                        Image(systemName: "plus")
                    })
                    
                    
                    .fullScreenCover(isPresented: $isModal,
                                     onDismiss: {
                        //newNameが空でなかったら(!newName)checkItemsにアイテムを入れる。*これで空でキャンセル押しても入らない
                        if (!newName.isEmpty) {
                            self.checkItems.append(CheckItem(name: newName, hantei: false))
                        }
                       })
                    {
                        AddView(newName: $newName, isModal: $isModal)
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

//ContentVIewをこの構造体でプレビュー表示
struct ContentViewPreviewWapper: View {
    
    @State var newName = ""
    var body: some View {
        
        ContentView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewPreviewWapper()
    }
}
