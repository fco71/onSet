//
//  FavoritesHeaderView.swift
//  onSet
//
//  Created by Francisco Valdez on 14/2/22.
//

import SwiftUI

struct FavoritesHeaderView: View {
    var body: some View {
        VStack {
            
            Text("Favorites")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.bottom, -10)
         
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack(spacing: 15){
                    
                    ForEach(1...21,id: \.self){index in
                        
                        VStack {
                            Image("p\(index)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                                .padding(5)
                                .background(Circle().stroke(Color.pink,lineWidth: 3.5))
                                .clipShape(Circle())
                            
                            Text("Full Name")
                                .font(.system(size: 10, weight: .semibold, design: .rounded))
                        }
                    }
                    
                }.padding()
            })
        }
    }
}

struct FavoritesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesHeaderView()
    }
}
