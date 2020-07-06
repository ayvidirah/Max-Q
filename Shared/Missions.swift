//
//  ContentView.swift
//  Shared
//
//  Created by Hariharan Murugesan on 03/07/20.
//

import SwiftUI

struct Missions: View {
    @ObservedObject var missions = GetData()
    @State var searchText = ""
    var body: some View {
        NavigationView{
            VStack{
                SearchBar(text: $searchText)
                    .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                List(missions.Missions.filter{((searchText == "" ? true: $0.missionName?.lowercased().contains(searchText.lowercased())) ?? false) || ((searchText == "" ? true: $0.details?.lowercased().contains(searchText.lowercased())) ?? false)}, id: \.details) { mission in
                    NavigationLink(destination: Detail(mission: mission)){
                        Launch(missionContext: mission)
                            .padding(.bottom, 3)
                            .padding(.top, 3)
                    }
                }
            }
            .navigationTitle(Text("Missions"))
            .listStyle(PlainListStyle())
            
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Missions()
    }
}


/*]
 
 1
 2
 3
 List(todoItems.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
     Text(item.name)
 }
 
 
 NavigationLink(destination: Detail(mission: mission)){
     Launch(missionContext: mission)
         .padding(.bottom, 3)
         .padding(.top, 3)
 }
 */
