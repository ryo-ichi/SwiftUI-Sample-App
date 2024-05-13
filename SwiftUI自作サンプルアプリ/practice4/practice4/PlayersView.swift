//
//  PlayersView.swift
//  practice4
//
//  Created by 松原涼一 on 2023/01/30.
//

import SwiftUI

struct PlayersView: View {
    var photo: PlayersData
    var body: some View {
        Image(photo.image)
    }
}

struct PlayersView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersView(photo: Lakers[0])
    }
}
