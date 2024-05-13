//
//  ContentView.swift
//  practice4
//
//  Created by 松原涼一 on 2023/01/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section(header:Text("ロサンゼルスレイカーズ")){
                        ForEach(Lakers, id: \.code) { playersitem in
                            NavigationLink (destination: PlayersView(photo: playersitem)){
                                PlayersDateView(photo: playersitem)
                                
                            }
                            
                            
                        }
                        
                    }
                    Section(header:Text("ゴールデンステートウォーリアーズ")) {
                        ForEach(warriors, id: \.code) { playersitem in
                            NavigationLink (destination: PlayersView(photo: playersitem)){

                            PlayersDateView(photo: playersitem)
                            
                            }
                        }
                        
                    }
                    Section(header:Text("ブルックリンネッツ")) {
                        ForEach(nets, id: \.code) { playersitem in
                            NavigationLink (destination: PlayersView(photo: playersitem)){

                         PlayersDateView(photo: playersitem)
                            }
                        }
                    }
                }
                .navigationTitle(Text("選手リスト"))
            }
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

