//
//  ProjectsView.swift
//  onSet
//
//  Created by Francisco Valdez on 7/2/22.
//

import SwiftUI

struct ProjectsView: View {
    var body: some View {

        ZStack {
            VStack(alignment: .center) {
                List {
                    ForEach(0 ..< 15) { item in
                        ProductionStickerView()
                    }
                }.frame(maxWidth: 590)
            } //: VSTACK
        } //: ZSTACK
        
        
        
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
            .previewLayout(.sizeThatFits)
//            .padding()
    }
}
