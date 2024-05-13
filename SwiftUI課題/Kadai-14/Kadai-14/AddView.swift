//
//  AddView.swift
//  Kadai-14
//
//  Created by 松原涼一 on 2023/04/06.
//

import SwiftUI

struct AddView: View {
    
    @Binding var newName:String
    @Binding var isModal:Bool
    
    
    @State var checkItems = [
        CheckItem (name: "りんご", hantei: false),
        CheckItem(name: "みかん", hantei: true),
        CheckItem(name: "バナナ", hantei: false),
        CheckItem(name: "パイナップル", hantei: true)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("名前")
                        .font(.title3)
                        .padding()
                    
                    TextField("", text: $newName)
                        .textFieldStyle(.roundedBorder)
                }
                .frame(width: 300)
                
                Spacer()
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Button(action: {
//                        if (!newName.isEmpty) {
//                            self.checkItems.append(CheckItem(name: newName, hantei: false))
//                        }
                        isModal.toggle()
   
                    }, label: {
                        Text("Save")
                            .fontWeight(.bold)
                        
                    })
                    //newNameが空(.isEmpty)だと押せなくする処理 条件によってButtonを押せなくする(.disabled)
                    .disabled(newName.isEmpty)
                }
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    
                    Button(action: {
                        
                        isModal.toggle()
                        
                        
                    }, label: {
                        Text("Cansel")
                        
                    })
                }
            }
        }
    }
}









//Addをこの構造体でプレビュー表示
struct AddViewPreviewWrapper: View {
    
    @State var isModal = false
    @State var newName = ""
    var body: some View {
        
        AddView(newName: $newName, isModal: $isModal)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddViewPreviewWrapper()
        
        
    }
}
