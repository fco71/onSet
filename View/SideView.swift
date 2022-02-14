//
//  SideView.swift
//  Instagram Desktop
//
//  Created by Balaji on 23/12/20.
//

import SwiftUI

struct SideView: View {
    
    var screen = NSScreen.main!.visibleFrame
    
    @State var selected = "Productions"
    @Namespace var animation
    
    var body: some View {
        VStack(spacing: 15){
            
            HStack(spacing: 10){
                
//                Image("instagram")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 30, height: 30)
                
                Text("Who's On Set")
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .foregroundColor(.pink)
                
//                Spacer()
            }
            .padding()
            .padding(.top,20)
            
            Image("pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .clipShape(Circle())
                .padding(5)
                .background(
                
                    Circle()
                        .stroke(Color.pink,lineWidth: 5)
                )
                .clipShape(Circle())
            
            Text("Full Name")
                .font(.title)
                .foregroundColor(.white)
            
            Text("username")
                .foregroundColor(.gray)
            
            
            Group {
                
//                TabButton(image: "film", title: "Productions", selected: $selected, animation: animation)
//                    .padding(.top)
//
//                TabButton(image: "person.2", title: "Crew", selected: $selected, animation: animation)
//
//                TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
            }
            
            Spacer()
            
//            Divider()
                .padding(.horizontal,20)
            
            Spacer()
            
//            TabButton(image: "arrow.up.forward.square", title: "Login", selected: .constant(""), animation: animation)
//                .padding(.bottom,20)
        }
        .frame(maxWidth: (screen.width / 1.7) / 3.5, maxHeight: .infinity)
        .background(BlurWindow())
    }
}

struct SideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
