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
        NavigationView {
            Group {
                List {
                    VStack {
                        
                        Image("pic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding(5)
                            .background(
                            
                                Circle()
                                    .stroke(Color.pink,lineWidth: 5)
                            )
                            .clipShape(Circle())
                            .padding(.top)
                        
                        Text("Full Name")
                            .font(.callout)
                            .foregroundColor(.white)
                        
                        Text("username")
                            .foregroundColor(.gray)
                            .font(.footnote)
                    } //: VSTACK HEADER
                    .modifier(CenterModifier())
                    
                    Spacer()
                    
                    VStack {
                        
                        NavigationLink(destination: CrewCardView()) {
                
                                HStack {
                                    Image(systemName: "film")
                                        .font(.system(size: 12))
                                        .frame(width: 25, alignment: .center)
                                    Spacer()
                                    Text("Production")
                                        .font(.footnote)
                                }
                            
                            
                        } //: NAVIGATION LINK
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(destination: CrewCardView()) {
                          
                                HStack {
                                    Image(systemName: "person.2")
                                        .font(.system(size: 12))
                                        .frame(width: 25, alignment: .center)
                                    Spacer()
                                    Text("Crew")
                                        .font(.footnote)
                                }
                            
                        } //: NAVIGATION LINK
                        .buttonStyle(PlainButtonStyle())
                        
                        
                        NavigationLink(destination: CrewCardView()) {
                            
                           
                                HStack {
                                    Image(systemName: "gear")
                                        .font(.system(size: 12))
                                        .frame(width: 25, alignment: .center)
                                    Spacer()
                                    Text("Settings")
                                        .font(.footnote)
                                }
                            
                            
                        } //: NAVIGATION LINK
                        .buttonStyle(PlainButtonStyle())
                        
                    } //: VSTACK
                    .padding(.vertical)
                   
                   Text("Login")
                        .font(.caption)
                        

                    
                }
            }
        }
            .preferredColorScheme(.dark)


    }


}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
