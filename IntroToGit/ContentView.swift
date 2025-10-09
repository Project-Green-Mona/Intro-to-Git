//
//  ContentView.swift
//  IntroToGit
//
//  Created by Habram Alcantar on 10/7/25.
//

import SwiftUI

struct TeamMember : Identifiable {
    let id = UUID()
    let name : String
    let role : String
    let imageName : String
}

let teamMembers = [
    TeamMember(name: "Habram Alcantar", role: "SWE Team", imageName: "habram_profile_pic"),
<<<<<<< HEAD
    TeamMember(name: "Nick Burleson", role: "SWE Team", imageName: "ProfilepicNick"),
=======
    TeamMember(name: "Franklin Rigoutsos", role: "SWE Team", imageName: "franklin_profile_pic"),
    TeamMember(name: "Amy Shao", role: "SWE Team", imageName: "amy_profile_pic")
>>>>>>> 6f59186362ba7007f83d3e902169609f906feec7
]

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Mona: Meet the Team")
                .font(.largeTitle.bold())
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, alignment: .center)
            
            TabView {
                ForEach(teamMembers) { member in
                    VStack {
                        Image(member.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 250)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                        
                        Text(member.name)
                            .font(.headline)
                            .padding(.top, 10)
                        
                        Text(member.role)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3)
                    .padding(.vertical, 40)
                    .padding(.horizontal, 20)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(height: 500)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
