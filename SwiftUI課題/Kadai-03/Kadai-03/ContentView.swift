//
//  ContentView.swift
//  Kadai-03
//
//  Created by 松原涼一 on 2023/02/27.
//

import SwiftUI

struct ContentView: View {
    @State var leftTextField = ""
    @State var leftTextChangeField = 0
    @State var leftToggleButton = true
    
    @State var rightTextField = ""
    @State var rightTextChangeField = 0
    @State var rightToggleButton = true
    @State var result = 0
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    TextField("", text: $leftTextField)
                        .textFieldStyle(.roundedBorder)
                    
                    HStack {
                        
                        Toggle(isOn: $leftToggleButton) {
                            Label("+", systemImage: "")
                        }
                        Label("- ", systemImage: "")
                    }
                    
                }
                .frame(width: 105)
                .padding()
                
                
                VStack {
                    TextField("", text: $rightTextField)
                        .textFieldStyle(.roundedBorder)
                    HStack {
                        Toggle(isOn: $rightToggleButton) {
                            Label("+", systemImage: "")
                            
                        }
                        Label("- ", systemImage: "")
                    }
                    
                }
                .frame(width: 105)
                .padding()
            }
            
            Button(action: {
                //右toggleの演算
                if (rightToggleButton) {
                    let rightTextField = Int(self.rightTextField) ?? 0
                    rightTextChangeField = rightTextField * -1
                } else {
                    let rightTextField = Int(self.rightTextField) ?? 0
                    rightTextChangeField = rightTextField * 1
                }
                
                //左toggleの演算
                if (leftToggleButton) {
                    let leftTextField = Int(self.leftTextField) ?? 0
                    leftTextChangeField = leftTextField * -1
                } else {
                    let leftTextField = Int(self.leftTextField) ?? 0
                    leftTextChangeField = leftTextField * 1
                }
                
                
                //右左合計を出力
                result = rightTextChangeField + leftTextChangeField
                
                
                
                
            }, label: {
                Text("Button")
                
            })
            HStack {
                Text("\(leftTextChangeField)").frame(width: 50,alignment: .leading)
                Label("+", systemImage: "")
                Text("\(rightTextChangeField)").frame(width: 50,alignment: .trailing)
            }
            
            Text("\(result)").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
