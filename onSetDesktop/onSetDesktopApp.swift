//
//  onSetDesktopApp.swift
//  onSetDesktop
//
//  Created by Francisco Valdez on 12/2/22.
//

import SwiftUI

@main
struct onSetDesktopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Hiding Focus Ring....

extension NSTextField{
    
    open override var focusRingType: NSFocusRingType{
        get{.none}
        set{}
    }
}
