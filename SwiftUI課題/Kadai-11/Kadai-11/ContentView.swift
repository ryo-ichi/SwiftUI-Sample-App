////
////  ContentView.swift
////  Kadai-11
////
////  Created by 松原涼一 on 2023/03/25.
////
//
import SwiftUI

//ForEachに渡すデータコレクション
var prefectureArray = [
    "北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県",
    "茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県",
    "新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県",
    "静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県",
    "奈良県","和歌山県","鳥取県","島根県","岡山県","広島県",
    "山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県",
    "長崎県","熊本県","大分県","宮城県","鹿児島県","沖縄県"]


struct PrefecturesView:View {
    
    @Binding var isModal:Bool
    @Binding var prefectures:String
    
    var body: some View {
        
        NavigationView {
            List {
                //インデックス番号を使いリスト表示
                ForEach(prefectureArray.indices, id: \.self) { index in
                    //各項目にタップジェスチャー設定
                    Text(prefectureArray[index]).onTapGesture {
                        //配列のインデックス番号と比較分岐
                        switch index {
                            
                        case 0:
                            prefectures = "北海道"
                        case 1:
                            prefectures = "青森県"
                        case 2:
                            prefectures = "岩手県"
                        case 3:
                            prefectures = "宮城県"
                        case 4:
                            prefectures = "秋田県"
                        case 5:
                            prefectures = "山形県"
                        case 6:
                            prefectures = "福島県"
                        case 7:
                            prefectures = "茨城県"
                        case 8:
                            prefectures = "栃木県"
                        case 9:
                            prefectures = "群馬県"
                        case 10:
                            prefectures = "埼玉県"
                        case 11:
                            prefectures = "千葉県"
                        case 12:
                            prefectures = "東京都"
                        case 13:
                            prefectures = "神奈川県"
                        case 14:
                            prefectures = "新潟県"
                        case 15:
                            prefectures = "富山県"
                        case 16:
                            prefectures = "石川県"
                        case 17:
                            prefectures = "福井県"
                        case 18:
                            prefectures = "山梨県"
                        case 19:
                            prefectures = "長野県"
                        case 20:
                            prefectures = "岐阜県"
                        case 21:
                            prefectures = "静岡県"
                        case 22:
                            prefectures = "愛知県"
                        case 23:
                            prefectures = "三重県"
                        case 24:
                            prefectures = "滋賀県"
                        case 25:
                            prefectures = "京都府"
                        case 26:
                            prefectures = "大阪府"
                        case 27:
                            prefectures = "兵庫県"
                        case 28:
                            prefectures = "奈良県"
                        case 29:
                            prefectures = "和歌山県"
                        case 30:
                            prefectures = "鳥取県"
                        case 31:
                            prefectures = "島根県"
                        case 32 :
                            prefectures = "岡山県"
                        case 33:
                            prefectures = "広島県"
                        case 34:
                            prefectures = "山口県"
                        case 35:
                            prefectures = "徳島県"
                        case 36:
                            prefectures = "香川県"
                        case 37:
                            prefectures = "愛媛県"
                        case 38:
                            prefectures = "高知県"
                        case 39:
                            prefectures = "福岡県"
                        case 40:
                            prefectures = "佐賀県"
                        case 41:
                            prefectures = "長崎県"
                        case 42 :
                            prefectures = "熊本県"
                        case 43:
                            prefectures = "大分県"
                        case 44:
                            prefectures = "宮城県"
                        case 45:
                            prefectures = "鹿児島県"
                        case 46:
                            prefectures = "沖縄"
                        default:
                            prefectures = "未選択"
                        }
                        
                        isModal.toggle()
                        
                    }
                }
            }
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                        isModal.toggle()
                        
                    }, label: {
                        Text("Cansel")
                    })
                    
                }
                ToolbarItem(placement: .principal) {
                    Text("都道府県")
                    
                        .font(.system(size:18))
                }
            }
        }
    }
}


struct ContentView: View {
    
    @State var prefectures = "未選択"
    @State var isModal = false
    
    var body: some View {
        VStack {
            HStack {
                Text("都道府県")
                
                Spacer()
                
                Text(prefectures).padding()
                
                Spacer()
                
                Button(action: {
                    
                    isModal.toggle()
                    
                }, label: {
                    Text("変更")
                })
                .padding()
                .fullScreenCover(isPresented: $isModal, content: {
                    PrefecturesView(isModal: $isModal, prefectures: $prefectures)
                })
                
                
            }.padding()
            
            Spacer()
            
        }
    }
}

//prefecturesViewのプレビュー
struct PrefecturesViewWapper:View {
    
    @State var isModal = false
    @State var prefectures = ""
    
    var body: some View {
        PrefecturesView(isModal: $isModal, prefectures: $prefectures)
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        PrefecturesViewWapper()
    }
}



