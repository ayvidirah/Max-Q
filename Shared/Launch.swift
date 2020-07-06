//
//  Launch.swift
//  SpaceAppUI
//
//  Created by Hariharan Murugesan on 04/07/20.
//

import SwiftUI

struct Launch: View {
    var missionContext: Launches
    
    var body: some View {
        HStack{
            Image("patch")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            
            VStack(alignment: .leading){
                HStack(alignment: .bottom){
                    Text(missionContext.missionName ?? "NA")
                        .font(.title2)
                    Spacer()
                    
                }
                .padding(.bottom, 3.0)
                Text("\(missionContext.rocket?.rocketName ?? "") - \(missionContext.rocket?.firstStage?.cores?.first?.coreSerial ?? "")")
                    .font(.footnote)
                    //.foregroundColor(.secondary)
                    .multilineTextAlignment(.trailing)
                    .padding(.bottom, 3.0)
                
                Text(missionContext.details ?? "NA")
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .lineLimit(3)
                 //   .foregroundColor(.secondary)
                    .font(.subheadline)
                    .padding(.bottom, 3.0)
                
            }
            .padding(.all, 1.0)
        }
    }
}
