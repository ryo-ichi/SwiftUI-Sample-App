//
//  PlayersData.swift
//  practice4
//
//  Created by 松原涼一 on 2023/01/29.
//

import Foundation
import SwiftUI


struct PlayersData{
    var code = UUID()
    var name:String
    var image:String
}



var Lakers = [
    PlayersData(name: "LeBron James", image: "LeBron James"),
    PlayersData(name: "Anthony Davis", image: "Anthony Davis"),
    PlayersData(name: "hachimura rui", image: "hachimura rui")
]

var warriors = [
    PlayersData(name: "Stephen Curry", image: "Stephen Curry"),
    PlayersData(name: "Klay Thompson", image: "Klay Thompson"),
    PlayersData(name: "Draymond Green ", image: "Draymond Green ")
]

var nets = [
    PlayersData(name: "Kevin Durant", image: "Kevin Durant"),
    PlayersData(name: "kyrie irving", image: "kyrie irving"),
    PlayersData(name: "watanabe yuta ", image: "watanabe yuta ")
]


struct PlayersDateView:View {
    
    var photo: PlayersData
    
    var body: some View {
        VStack {
            HStack {
                Image (photo.image)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                   
                Text(photo.name)
                
            }.frame(width: 250, height: 80, alignment: .leading)
            
        }
    }
}


struct PlayersDateView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersDateView(photo: Lakers[0])
        ContentView()
    }
}








