//
//  Home.swift
//  onSet
//
//  Created by Francisco Valdez on 12/2/22.
//

import SwiftUI



struct Home: View {
    
    var screen = NSScreen.main!.visibleFrame
    
    var body: some View {
        
        HStack(spacing: 0) {
            
//            SideView()
            
            VStack(spacing: 0) {
                HeaderView()
                
                FavoritesHeaderView()
                
                MainScreenView()
            }
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.1, height: screen.height / 1.1) // divided by 1.1 in the meantime
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

