//
//  Detail-iOS.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 07/07/20.
//

import SwiftUI

struct Detail: View {
    var mission: Launches
    
    #if os(iOS)
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                VStack(alignment: .leading){
                    HStack(alignment: .center){
                        
                        Image("patch")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                            .padding(.all, 3)
                        
                        Text("\(mission.rocket?.rocketName ?? "") - \(mission.rocket?.firstStage?.cores?.first?.coreSerial ?? "")")
                            .font(.title3)
                            //.foregroundColor(.secondary)
                            .multilineTextAlignment(.trailing)
                            .padding(.bottom, 3.0)
                        
                        
                    }
                    
                    Text(mission.details ?? "Mission Details N/A")
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        //   .foregroundColor(.secondary)
                        .font(.caption)
                        .padding(.bottom, 3.0)
                    
                }
                .padding(.all, 10.0)
                
            }
            
            Divider()
            
            Text("Launch")
                .font(.title)
                .padding(.bottom, 20)
            
            Text(mission.launchSite?.siteNameLong ?? "")
                .padding(.bottom, 20)
            Text(mission.launchDateLocal ?? "")
            
            Divider()
            Text("Webcast")
                .font(.title)
                .padding(.bottom, 20)
            
            Link("Webcast of \(mission.missionName ?? "Mission")", destination: URL(string: "\(mission.links?.videoLink ?? "https://spacex.com/")")!)
            
            
            Spacer()
            
        }
        .navigationTitle(mission.missionName ?? "Mission")
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
    }
    #elseif os(macOS)
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                VStack(alignment: .leading){
                    HStack(alignment: .center){
                        
                        Image("patch")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                            .padding(.all, 3)
                        
                        Text("\(mission.rocket?.rocketName ?? "") - \(mission.rocket?.firstStage?.cores?.first?.coreSerial ?? "")")
                            .font(.title3)
                            //.foregroundColor(.secondary)
                            .multilineTextAlignment(.trailing)
                            .padding(.bottom, 3.0)
                        
                        
                    }
                    
                    Text(mission.details ?? "Mission Details N/A")
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        //   .foregroundColor(.secondary)
                        .font(.caption)
                        .padding(.bottom, 3.0)
                    
                }
                .padding(.all, 1.0)
                
            }
            
            Divider()
            
            Text("Launch")
                .font(.title)
                .padding(.bottom, 20)
            
            Text(mission.launchSite?.siteNameLong ?? "")
                .padding(.bottom, 20)
            Text(mission.launchDateLocal ?? "")
            
            Divider()
            Text("Webcast")
                .font(.title)
                .padding(.bottom, 20)
            
            Link("Webcast of \(mission.missionName ?? "Mission")", destination: URL(string: "\(mission.links?.videoLink ?? "https://spacex.com/")")!)
            
            
            Spacer()
            
        }
        
        .frame(minWidth: 100, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: 500, minHeight: 100, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 500, alignment: .center)
        .navigationTitle(mission.missionName ?? "Mission")
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 1)
    }

    #endif
    
}
//struct Detail_iOS_Previews: PreviewProvider {
//    static var previews: some View {
//Detail(mission: Preview)
//    }
//}


