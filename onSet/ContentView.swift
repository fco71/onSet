//
//  ContentView.swift
//  onSet
//
//  Created by Francisco Valdez on 23/1/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
   
    var body: some View {
        
        NavigationView {
            ZStack {
                HStack {
                    
                    VStack {
                        List {
                            ForEach(0 ..< 15) { item in
                                HStack {
                                    Spacer()
                                    ProductionStickerView()
                                    Spacer()
                                }
                            }
                        } //: LIST
                        .listStyle(InsetListStyle())
                        
                    .frame(maxWidth: 530, maxHeight: 700)
                        Spacer()
                    }
                    Spacer()
                } //: HSTACK
            }  //: ZSTACK
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor.clear
            }
            
            .toolbar {
            #if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // action
                    } label: {
                        Text("Login/Register")
                            .font(.footnote)
                }
                }
            #endif
            } //: TOOLBAR
//            .background(
//                BackgroundImageView()
//            )
//            .background(
//                backgroundGradient.ignoresSafeArea(.all)
//            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
