//
//  ContentView.swift
//  uitest
//
//  Created by Paul Huynh on 2022-09-16.
//

import SwiftUI
//use sf-system // Image(systemName:"pencil")
struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        Color.green
            .ignoresSafeArea()
            .overlay {
                VStack(spacing: 100) {
                    
                    Image("logo")
                    HStack {
                        Image(playerCard).frame(maxWidth: .infinity)
                        Image(cpuCard).frame(maxWidth: .infinity)
                    }
                    
                    Button(role: .none) {
                        //generate random number 2 to 14
                        
                        let playerRan = Int.random(in: 2...14)
                        let cpuRan = Int.random(in: 2...14)
                        
                        playerCard = "card" + String(playerRan)
                        cpuCard = "card" + String(cpuRan)
                        
                        if playerRan > cpuRan {
                            playerScore += 1
                        } else {
                            cpuScore += 1
                        }

                    } label: {
                        Image("dealbutton")
                    }
                    
                    HStack(alignment: .center) {
                        Spacer()
                        VStack(spacing: 20) {
                            Text("Player")
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .bold()
                            Text(String(playerScore))
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .lineLimit(0)
                        }
                        
                        Spacer()
                        VStack(spacing: 20) {
                            Text("CPU")
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text(String(cpuScore))
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }

                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
