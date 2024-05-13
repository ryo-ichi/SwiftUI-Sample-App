//
//  battleView.swift
//  practice8
//
//  Created by 松原涼一 on 2023/02/13.
//

import SwiftUI

struct battleView: View {
    
    @State var damagepoint = 0
    @State var completion = false
    var body: some View {
        ZStack {
            Button(action: {
                //乱数を格納
                damagepoint += Int.random(in: 1 ... 30)
                
                switch damagepoint {
                case  1<99:
                    print("モンスターに\(self.damagepoint)のダメージ")

                default:
                    print("モンスターをたおしたよ！戻ろう！")
                }
            }, label: {
                Circle()
                    .frame(width: 100, height: 100)
            })
            Text("こうげき")
                .foregroundColor(.white)

        }
            }
}

struct battleView_Previews: PreviewProvider {
    static var previews: some View {
        battleView()
    }
}
