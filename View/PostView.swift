//
//  PostView.swift
//  Instagram Desktop
//
//  Created by Balaji on 23/12/20.
//

import SwiftUI

struct PostView: View {
    var image: String
    var body: some View {
        
        GeometryReader {reader in
            VStack{
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: reader.frame(in: .global).width, height: 250)
                    .cornerRadius(10)
                
                HStack{
                    
                    // Use Your Own Post Model Data Here....
                    
//                    Image("pic")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 30, height: 30)
//                        .clipShape(Circle())
//                        .padding(5)
//                        .background(Circle().stroke(Color.pink,lineWidth: 3.5))
//                        .clipShape(Circle())
                    
                    Text("Project Title")
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        
                        Label (
                            title: { Text("Current") },
                            icon: { Image(systemName: "film") })
                    })
                    .buttonStyle(PlainButtonStyle())
                    
//                    Button(action: {}, label: {
//
//                        Label(
//                            title: { Text("556") },
//                            icon: { Image(systemName: "message") })
//                    })
//                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal)
                .foregroundColor(.gray)
            }
        }
        .frame(height: 300)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
