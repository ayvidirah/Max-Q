//
//  ContentView.swift
//  Shared
//
//  Created by Hariharan Murugesan on 03/07/20.
//

import SwiftUI

struct Missions: View {
    @ObservedObject var missions = GetData()
    var body: some View {
        NavigationView{
            List(missions.Missions, id: \.flightNumber) { mission in
                NavigationLink(destination: Detail(mission: mission)){
                    Launch(missionContext: mission)
                }
                
            }
            .navigationTitle(Text("Missions"))
            .listStyle(InsetListStyle())
            
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Missions()
    }
}
