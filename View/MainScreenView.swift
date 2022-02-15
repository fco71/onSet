//
//  MainView.swift
//  Instagram Desktop
//
//  Created by Balaji on 23/12/20.
//

import SwiftUI

struct MainScreenView: View {
    
    var screen = NSScreen.main!.visibleFrame
   
    @State var currentFeed = "Production"
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                HStack(alignment: .top){
                    
                    Text("Recent")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    ForEach(["Production","Crew"],id: \.self){type in
                        
                        Button(action: {
                            withAnimation{currentFeed = type}
                        }, label: {
                            
                            VStack(spacing: 8){
                                
                                Text(type)
                                    .foregroundColor(currentFeed == type ? .white : .gray)
                                
                                ZStack{
                                    
                                    Circle()
                                        .fill(Color.clear)
                                        .frame(width: 5, height: 5)
                                    
                                    if currentFeed == type{
                                        
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 5, height: 5)
                                    }
                                }
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                        
                }
                .padding(.horizontal)
                .padding(.top,8)
                
                // Posts....
                
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), content: {

                    // Using Only Post Images...
                    // Not Any Specific Arrray For This...
                    
                    ForEach(1...9,id: \.self){index in
                        
                        // PostCardView...
                        
                        PostView(image: "post\(index)")
                    }
                })
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Main"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
