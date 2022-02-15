//
//  MainView.swift
//  Africa
//
//  Created by Francisco Valdez on 1/12/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ProducerView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            CrewCardView()
                .tabItem {
                    Image(systemName:  "play.rectangle")
                    Text("Watch")
                }
            
            UserSettingsView()
                .tabItem {
                    Image(systemName:  "play.rectangle")
                    Text("Watch")
                }
            
            
        } //: END OF TAB
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
