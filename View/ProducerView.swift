//
//  ProducerView.swift
//  onSet
//
//  Created by Francisco Valdez on 14/2/22.
//

import SwiftUI

struct ProducerView: View {
//    @Binding var selected = Bool: false
//    
//    var animation: Namespace.ID
    @State private var fgColor: Color = .gray
    
    
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
                
                Group {
                    NavigationLink(destination: CrewCardView()) {
                        
                        HStack {
                            
                            Image(systemName: "film")
                                .font(.system(size: 17))
                            //                            .foregroundColor(isSelected ?? Color.pink : Color.gray)
                                .frame(width: 30)
                            
                            Text("Placeholder")
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            
                            Spacer(minLength: 0)
                        }
                        
                    }
                    
                }
                
            }
        }
        
    }
}

struct ProducerView_Previews: PreviewProvider {
    static var previews: some View {
        ProducerView()
    }
}
