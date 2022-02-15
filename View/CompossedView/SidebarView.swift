//
//  SidebarView.swift
//  onSet
//
//  Created by Francisco Valdez on 15/2/22.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        // MARK: - PROPERTIES
         
         
         //MARK: - BODY
        
        NavigationView {
            VStack {
                VStack(spacing: 10) {
                    
                    Image("pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .padding(5)
                        .background(
                        
                            Circle()
                                .stroke(Color.pink,lineWidth: 5)
                        )
                        .clipShape(Circle())
                        .padding(.top)
                    
                    Text("Full Name")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Text("username")
                        .foregroundColor(.gray)
                } //: VSTACK HEADER
                Spacer()
                
                VStack {
                    
                    NavigationLink(destination: CrewCardView()) {
            
                            HStack {
                                Image(systemName: "film")
                                    .font(.system(size: 17))
                                    .frame(width: 25, alignment: .center)
                                Spacer()
                                Text("Production")
                                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                            } .frame(width: 110, height: 30)
                        
                        
                    } //: NAVIGATION LINK
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: CrewCardView()) {
                      
                            HStack {
                                Image(systemName: "person.2")
                                    .font(.system(size: 17))
                                    .frame(width: 25, alignment: .center)
                                Spacer()
                                Text("Crew")
                                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                            } .frame(width: 110, height: 30)
                        
                    } //: NAVIGATION LINK
                    .buttonStyle(PlainButtonStyle())
                    
                    
                    NavigationLink(destination: CrewCardView()) {
                        
                       
                            HStack {
                                Image(systemName: "gear")
                                    .font(.system(size: 17))
                                    .frame(width: 25, alignment: .center)
                                Spacer()
                                Text("Settings")
                                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                            } .frame(width: 110, height: 30)
                        
                        
                    } //: NAVIGATION LINK
                    .buttonStyle(PlainButtonStyle())
                    
                } //: VSTACK
                .padding(.vertical)
                
               Text("Login")
                    .font(.footnote)

                
            }
        }
        
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
