
import SwiftUI

struct ContentView: View {
    
    
    @State var selectedSymbol = 1
    @State var textFieldOne = ""
    @State var textFieldTwo = ""
    @State private var result = "合計値"
    
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VStack {
                Group {
                    TextField("", text: $textFieldOne)
                    TextField("", text: $textFieldTwo)
                }
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 250, height: 30)
                
                Picker(selection: $selectedSymbol , label: Text("Picker")) {
                    Text("+").tag(1)
                    Text("-").tag(2)
                    Text("×").tag(3)
                    Text("÷").tag(4)
                }
                .pickerStyle(.segmented)
                .frame(width: 250, height: 30)
                
                Button(action: {
                    switch selectedSymbol {
                    case 1:
                        upCalc()
                    case 2:
                        downCalc()
                    case 3:
                        doubleCalc()
                    case 4:
                        breakCalc()
                    default:
                        result = "計算できません"
                    }
                    
                }, label: {
                    Text("Button")
                })
                .padding(30)
                
                
                
            }
            Text(result)
        }
       
    }
    
    
    //+演算関数
    func upCalc() {
        let textFieldOne = Double(self.textFおieldOne) ?? 0
        let textFieldTwo = Double(self.textFieldTwo) ?? 0
        
        result = "\(textFieldOne + textFieldTwo)"
        
    }
    
    //-演算関数
    func downCalc() {
        let textFieldOne = Double(textFieldOne) ?? 0
        let textFieldTwo = Double(textFieldTwo) ?? 0
        
        result = "\(textFieldOne - textFieldTwo)"
        
    }
    
    //    //×演算関数
    func doubleCalc() {
        let textFieldOne = Double(textFieldOne) ?? 0
        let textFieldTwo = Double(textFieldTwo) ?? 0
        
        result = "\(textFieldOne * textFieldTwo)"
        
    }
    //
    //÷演算関数１
    func breakCalc() {
        let textFieldOne = Double(textFieldOne) ?? 0
        let textFieldTwo = Double(textFieldTwo) ?? 0
        
        if (textFieldTwo == 0) {
            
            result = "割る数には０以外を入力してください"
        }
        else {
            result = "\(textFieldOne / textFieldTwo)"
        }
        
        
        
        
        
    
        //            //÷演算関数２
        ////                    var textFieldOne = Double(textFieldOne)
        ////                    var textFieldTwo = Double(textFieldTwo)
        ////
        ////                    if (textFieldTwo == 0) {
        ////                        result = "割る数には０以外を入力してください"
        ////
        ////                    } else {
        ////                         textFieldOne = textFieldOne ?? 0
        ////                         textFieldTwo = textFieldTwo ?? 0
        ////
        ////                         result = "\(textFieldOne! / textFieldTwo!)"
        ////                    }
        
    }
}


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
