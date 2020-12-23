//
//  ContentView.swift
//  MySampleApp
//
//  Created by Bello Abdulrouf Olatunbosun on 22/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playercard = "card2";
    @State private var cpuCard = "card9";
    @State private var playerScore :Int = 0;
    @State private var cpuScore : Int = 0;
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // updates the cards
                    playercard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update the scores
                    
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                    
                    
                }, label: {
                    Image("dealbutton")
                        .padding()
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .bold()
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                    
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .bold()
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
