//
//  ProductionStickerView.swift
//  onSet
//
//  Created by Francisco Valdez on 7/2/22.
//

import SwiftUI

struct ProductionStickerView: View {
    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "film.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
                    .foregroundColor(.orange)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Production Name")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                    
                    Text("description")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                    
                } //: VSTACK
            }
        } //: ZSTACK
        .frame(width: 430, alignment: .leading)
            .background(Color.plomo)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
            

    }
}

struct ProductionStickerView_Previews: PreviewProvider {
    static var previews: some View {
        ProductionStickerView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
