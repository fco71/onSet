//
//  MainView.swift
//  onSet
//
//  Created by Francisco Valdez on 25/1/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    // action
                } label: {
                    Text("Login/Register")
                        .font(.footnote)
            }
            }.padding(.horizontal)
            Spacer()
        } //: VSTACK login
       

        
        // MARK: - PANES
        // create panes as views and then compose here
        
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
