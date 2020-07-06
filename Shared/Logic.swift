//
//  Logic.swift
//  SpaceAppUI
//
//  Created by Hariharan Murugesan on 04/07/20.
//

import SwiftUI

let capsuleURL = URL(string: "https://api.spacexdata.com/v3/capsules")!
let launchURL = URL(string: "https://api.spacexdata.com/v3/launches")!

struct Capsule: Codable, Identifiable {
    var id: Int?
    var capsule_serial, capsule_id, status, original_launch, type, details: String?
    var landings, reuse_count, original_launch_unix: Int?
    var missions: [missions]
}

struct missions: Codable {
    var name: String?
    var flight: Int?
}

public class GetData: ObservableObject{
    @Published var Missions = [Launches]()
    init() {
        Go()
    }
    
    func Go(){
        URLSession.shared.dataTask(with: launchURL) { (data, resp, error) in
            if error != nil {
                print(error ?? "Error", error?.localizedDescription ?? "Error")
            } else {
                
                guard let data = data else {return}
             //   print(String(data: data, encoding: .utf8)!)
                
                do {
                    let parsed = try JSONDecoder().decode([Launches].self, from: data)
                    DispatchQueue.main.async {
                        self.Missions = parsed
                    }
                } catch {
                    print(error, error.localizedDescription)
                }
            }
        }.resume()
    }
}

let previewData = Capsule(id: 0, capsule_serial: "C101", capsule_id: "dragon1", status: "retired", original_launch: "2010-12-08T15:43:00.000Z", type: "Dragon 1.0", details: "Reentered after three weeks in orbit", landings: 0, reuse_count: 0, missions: [missions(name: "COTS 1", flight: 7)])

func null2nill(_ value: AnyObject?) -> AnyObject?{
    if value is NSNull{
        return nil
    } else {
        return value
    }
    
}
