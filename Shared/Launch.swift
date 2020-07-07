//
//  Launch.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 04/07/20.
//

import SwiftUI

struct Launch: View {
    var missionContext: Launches
    
    var body: some View {
        HStack{
            RemoteImage(url: URL(string: missionContext.links?.missionPatch ?? "https://www.spacex.com/static/images/share.jpg")!, errorView: { error in
         //       Text(error.localizedDescription)
                Image("patch")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }, imageView: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }, loadingView: {
                Image("patch")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            })
            
            VStack(alignment: .leading){
                HStack(alignment: .bottom){
                    Text(missionContext.missionName ?? "NA")
                        .font(.title2)
                    Spacer()
                  
                    
                    Text("#\(missionContext.flightNumber ?? 404)")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                    
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

struct Launch_Previews: PreviewProvider {
    static var previews: some View {
    Launch(missionContext: Preview)
    }
}
