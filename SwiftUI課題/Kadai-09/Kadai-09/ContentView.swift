//
//  ContentView.swift
//  Kadai-09
//
//  Created by 松原涼一 on 2023/03/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var isModal = false
    @State var result = "未選択"
   
    var body: some View {
        VStack {
            HStack {
                Text("都道府県")
                    .padding()
                    Spacer()
            
                Text(result)
                    .padding()
                    Spacer()
                
                Button(action: {
                    isModal = true
                    
                }, label: {
                    Text("入力")
                })
                .padding()
                .fullScreenCover(isPresented: $isModal, content: {
                    ContentView2(isModal: $isModal, result: $result)
                
                })
                
            }
            
            Spacer()
            
        }.padding()
    }
}

struct ContentView2:View {
    
    @Binding var isModal: Bool
    @Binding var result:String
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack {
                    Group {
                        Button(action: {
                            isModal = false
                            result = "東京都"
                        }, label: {Text("東京都")})
                        
                        Button(action: {
                            isModal = false
                            result = "神奈川県"
                        
                        }, label: {Text("神奈川県")})
                        
                        Button(action: {
                            isModal = false
                            result = "埼玉県"
                            
                        }, label: {Text("埼玉県")})
                        
                        Button(action: {
                            isModal = false
                            result = "千葉県"
                            
                        }, label: {Text("千葉県")})
                    }
                    .padding()
                    
                }
                
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Button(action: {
                        isModal = false
                        
                    }, label: {
                        Text("Cansel")
                    })
                })
            }
            
            
        }
       
        
    }
}















struct ContentView2PreviewWapper:View {
    @State var isModal = false
    @State var result = ""
    var body: some View {
        ContentView2(isModal: $isModal, result: $result)
    }

}

//プレビュー専用構造体
struct previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView2PreviewWapper()
    }
}
