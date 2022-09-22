//
//  ContentView.swift
//  Memorize
//
//  Created by Neil on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius:20)
                .stroke(lineWidth: 3)
                
            Text("Hello, world!").foregroundColor(.orange)
        }.padding(.horizontal)
          .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        
//        return
                
                
       
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
