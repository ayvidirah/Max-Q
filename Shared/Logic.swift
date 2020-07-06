//
//  Logic.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 04/07/20.
//

import SwiftUI

let launchURL = URL(string: "https://api.spacexdata.com/v3/launches")!

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
