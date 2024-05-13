//
//  CountryView.swift
//  practice2
//
//  Created by 松原涼一 on 2023/01/25.
//

import SwiftUI

struct CountryView: View {
    @Binding var name:String
    var body: some View {
        ZStack {
            Image("statue of liberty")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
            
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}
