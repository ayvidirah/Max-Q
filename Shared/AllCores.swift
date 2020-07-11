//
//  AllCores.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 11/07/20.
//

import SwiftUI

struct AllCores: View {
    var core: Cores
    var body: some View {
        HStack{
            
            VStack(alignment: .leading){
                HStack(alignment: .center){
                    Text(core.coreSerial ?? "NA")
                        .font(.title2)
                    Spacer()
                    
                    if core.status == "active"{
                        Text(" Active")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 10)
                            .background(Color(.systemGreen))
                    } else if core.status == "lost" {
                        Text("Lost")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 10)
                            .background(Color(.systemRed))
                    }
                    
                }
                .padding(.bottom, 3.0)
                Text("\(core.originalLaunch ?? "")")
                    .font(.footnote)
                    .multilineTextAlignment(.trailing)
                    .padding(.all, 3.0)
                
                Text(core.details ?? "NA")
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .lineLimit(3)
                    //   .foregroundColor(.secondary)
                    .font(.subheadline)
                    .padding(.all, 3.0)
                
                if core.missions != nil{
                    List(core.missions!, id: \.flight) { msn in
                        VStack {
                            Text(msn.name ?? "NA")
                                .padding(.bottom, 3)
                            
                        }
                        .listStyle(InsetListStyle())
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 1)
                }
                Spacer()
                
            }
            
            .padding(.all, 1.0)
        }
    }
}

struct AllCores_Previews: PreviewProvider {
    static var previews: some View {
        AllCores(core: CorePreview)
    }
}
