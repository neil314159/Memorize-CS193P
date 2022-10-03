//
//  ContentView.swift
//  Memorize
//
//  Created by Neil on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚗", "🚕", "🚙", "🏎", "🚑", "🚒", "🚚", "🚓"]
   
    
    var body: some View {
        VStack{
            Text("Memorize!")
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack{
                cars
                Spacer()
                planes
                Spacer()
                boats
            }
            .font(.footnote)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        
    }
    
    var cars: some View {
        Button {
           emojis = ["🚗", "🚕", "🚙", "🏎", "🚑", "🚒", "🚚", "🚓"]
            emojis.shuffle()
        } label: {
            VStack {
                Text("Cars")
                Image(systemName:"car")
            }
        }
    }
    
    var planes: some View {
        Button {
            emojis = ["✈️", "🛫", "🚀", "🛸", "🚁", "🛰", "🚝", "🚟"]
            emojis.shuffle()
        } label: {
            VStack {
                Text("Planes")
                Image(systemName:"airplane")
            }
        }
    }
    
    var boats: some View {
        Button {
            emojis = ["⛵️", "🚤", "🛥", "🛳", "⛴", "🚢", "🛟", "🪝"]
            emojis.shuffle()
        } label: {
            VStack {
                Text("Boats")
                Image(systemName:"sailboat")
            }
        }
    }
    
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius:20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            
            }
        }
        .onTapGesture{
           isFaceUp = !isFaceUp
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
