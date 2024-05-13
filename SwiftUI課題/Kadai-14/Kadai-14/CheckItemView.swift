//
//  CheckItemView.swift
//  Kadai-14
//
//  Created by 松原涼一 on 2023/04/06.
//

import SwiftUI

struct CheckItemView:View {
    
    @Binding var checkItem: CheckItem
    
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    checkItem.hantei.toggle()
                }, label: {
                    Image(systemName: checkItem.hantei ? "checkmark.circle.fill" : "circle")
                    
                })
                Text(checkItem.self.name)
                
            }
        }
    }
}










//CheckItemViewをこの構造体でプレビュー表示
struct CheckItemViewPreviewWrapper :View {
    
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


struct CheckItemView_Previews: PreviewProvider {
    static var previews: some View {
        CheckItemViewPreviewWrapper()
    }
}
