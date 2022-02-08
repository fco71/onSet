//
//  onSetApp.swift
//  onSet
//
//  Created by Francisco Valdez on 23/1/22.
//

import SwiftUI

@main
struct onSetApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
