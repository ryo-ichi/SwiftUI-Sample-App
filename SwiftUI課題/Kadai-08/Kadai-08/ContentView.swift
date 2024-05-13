import SwiftUI

struct ContentView: View {
    
    @State var selectedTag = 1
    @State var numSliderValue = 0.0
    
    var body: some View {
        
        TabView(selection: $selectedTag) {
            SliderViewMint(numSliderMint: $numSliderValue)
                .tabItem {
                    Text("item")
                }.tag(1)
            
            SliderViewOrange(numSliderOrange: $numSliderValue)
                .tabItem {
                    Text("item")
                }.tag(2)
        }
    }
}


struct SliderViewMint: View {
    
    
    @Binding var numSliderMint: Double
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.mint)
            
            VStack {
                Text("\(numSliderMint)")
                Slider(value: $numSliderMint)
                
                Spacer()
                
            }
            .frame(width: 300)
            .padding()
        }
    }
}

struct SliderViewMint2: View {
    
    
    @Binding var numSliderMint2: Double
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.mint)
            
            VStack {
                Text("\(numSliderMint2)")
                Slider(value: $numSliderMint2)
                
                Spacer()
                
            }
            .frame(width: 300)
            .padding()
        }
    }
}


struct SliderViewOrange: View {
    
    @Binding var numSliderOrange: Double
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.orange)
            
            VStack {
                Text("\(numSliderOrange)")
                Slider(value: $numSliderOrange)
                
                Spacer()
                
            }
            .frame(width: 300)
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
