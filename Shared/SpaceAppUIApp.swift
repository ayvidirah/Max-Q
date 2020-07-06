//
//  SpaceAppUIApp.swift
//  Shared
//
//  Created by Hariharan Murugesan on 03/07/20.
//

import SwiftUI

@main
struct SpaceAppUIApp: App {
    var body: some Scene {
        WindowGroup {
            Missions()
                .navigationTitle("Missions")
        }
    }
}
