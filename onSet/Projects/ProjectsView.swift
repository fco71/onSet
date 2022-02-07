//
//  ProjectsView.swift
//  onSet
//
//  Created by Francisco Valdez on 7/2/22.
//

import SwiftUI

struct ProjectsView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("film")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Production Name")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("description")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                
            } //: VSTACK
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
