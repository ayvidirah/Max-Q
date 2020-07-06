//
//  Sidebar.swift
//  SpaceAppUI
//
//  Created by Hariharan Murugesan on 04/07/20.
//

import SwiftUI

struct Sidebar: View {
    @State var selected: Set<Int> = [0]
    var body: some View {
        NavigationView{
            List(selection: self.$selected){
                NavigationLink(destination: Missions()){
                    Label("Missions", systemImage: "chevron.up")
                }
                .tag(0)
                Label("Boosters", systemImage: "1.circle.fill")
                Label("Dragon", systemImage: "2.circle.fill")
            }
        
            .navigationTitle("Max Q")
            .listStyle(SidebarListStyle())
        }
        
    }
}


struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
