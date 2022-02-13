//
//  ContentView.swift
//  onSetDesktop
//
//  Created by Francisco Valdez on 12/2/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    

    var body: some View {
        Home()
            .preferredColorScheme(.dark)
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
