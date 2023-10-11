//
//  ContentView.swift
//  B1G Football Team Information
//
//  Created by Colten Glover on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    let teams: [Team] = Bundle.main.decode("B1G-Teams.json")
    
    var body: some View {
        NavigationView {
            ScrollView() {
                LazyVGrid(columns: columns) {
                    ForEach(teams, id: \.id) { team in
                        VStack {
                            NavigationLink {
                                Text(team.school)
                            } label: {
                                VStack {
                                    Image(team.school)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.horizontal)
                                    Text(team.school)
                                        .font(.title2.bold())
                                        .padding(.bottom)
                                }
                            }

                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
