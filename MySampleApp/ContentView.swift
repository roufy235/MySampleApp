//
//  ContentView.swift
//  MySampleApp
//
//  Created by Bello Abdulrouf Olatunbosun on 22/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Text("Hello")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
