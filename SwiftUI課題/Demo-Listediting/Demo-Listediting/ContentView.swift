//
//  ContentView.swift
//  Demo-Listediting
//
//  Created by 松原涼一 on 2023/04/08.
//

import SwiftUI



struct ContentView: View {
    
    @State var plansArray: [String] = ["買い物", "洗濯", "掃除", "勉強"]
    @State var word = ""
    
    let key = "plansArray"
    
    var body: some View {
        
        NavigationStack{
            HStack {
                TextField("", text: $word)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                    .padding()
                Button(action: {
                    if (!self.word.isEmpty) {
                        //配列に要素追加
                        self.plansArray.append(self.word)
                        self.word = ""
                        
                        //データ保存(保存したい箇所で記述)
                        UserDefaults.standard.set(self.plansArray, forKey: key)
                        
                    }
                    
                    
                }, label: {
                    Text("追加")
                })
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(.infinity)
            }
            
            List {
                ForEach(plansArray, id: \.self) { listItem in
                    Text(listItem)
                }
                .onDelete() { IndexSet in
                    self.plansArray.remove(atOffsets: IndexSet)
                    
                    //データ保存(保存したい箇所で記述)
                    UserDefaults.standard.set(self.plansArray, forKey: key)
                }
                .onMove() { IndexSet , Destination in
                    self.plansArray.move(fromOffsets: IndexSet, toOffset: Destination)
                    
                    //データ保存(保存したい箇所で記述)
                    UserDefaults.standard.set(self.plansArray, forKey: key)
                    
                }
                
                
                
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("新しい予定の追加", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .onAppear() {
                guard let  defaultsItem = UserDefaults.standard.array(forKey: key) as? [String]
                else {
                    return
                }
                self.plansArray = defaultsItem
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


