//
//  ContentView.swift
//  Kadai-01
//
//  Created by 松原涼一 on 2023/02/26.
//


import SwiftUI

struct ContentView: View {

    @State var textFieldOne = ""
    @State var textFieldTwo = ""
    @State var textFieldThree = ""
    @State var textFieldFour = ""
    @State var textFieldFive = ""
    @State var result = "Label"
    @State var num = 2

    var body: some View {

        VStack {
            Group {
                TextField("", text: $textFieldOne)

                TextField("", text: $textFieldTwo)

                TextField("", text: $textFieldThree)

                TextField("", text: $textFieldFour)

                TextField("", text: $textFieldFive)
            }
            .textFieldStyle(.roundedBorder)
            .frame(width: 120)
            .keyboardType(.numberPad)

            Button(action: {
                num = calc()
                result = String(num)

            }, label: {
                Text("Button")
            })
            .padding()

            Text(result)
        }
    }

    //textFieldOneの値とtextFieldTwoの値が文字列により連結した状態からでキャストしている。これを改善しないといけない。そのためにはキャストした状態から加算式を定義してあげないといけない


    func calc() -> Int {

        let textFieldOne  = Int(textFieldOne)
        let resultTextFieldOne = textFieldOne ?? 0

        let textFieldTwo  = Int(textFieldTwo)
        let resulttextFieldTwo = textFieldTwo ?? 0

        let textFieldThree  = Int(textFieldThree)
        let resulttextFieldThree = textFieldThree ?? 0

        let textFieldFour  = Int(textFieldFour)
        let resulttextFieldFour = textFieldFour ?? 0

        let textFieldFive  = Int(textFieldFive)
        let resulttextFieldFive = textFieldFive ?? 0

        let result = resultTextFieldOne + resulttextFieldTwo + resulttextFieldThree + resulttextFieldFour + resulttextFieldFive

        return result


        //        if let resultOne = Int(textFieldOne), let resultTwo = Int(textFieldTwo),
        //           let resultThree = Int(textFieldThree), let resultFour = Int(textFieldFour),
        //           let resultFive = Int(textFieldFive) {
        //            let result = resultOne + resultTwo + resultThree + resultFour + resultFive
        //            return result
        //        } else {
        //            return -1
        //
        //        }
    }


}


    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
            }
            
        }
    }

