//
//  HeaderView.swift
//  onSet
//
//  Created by Francisco Valdez on 14/2/22.
//

import SwiftUI

struct HeaderView: View {
    @State var search = ""
    
    var body: some View {
        HStack {
            
            Text("ONZET")
                .font(.system(size: 43, weight: .semibold, design: .rounded))
                    .foregroundColor(.pink)
            Spacer()
            
            TextField("Search", text: $search)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.white.opacity(0.25))
                .cornerRadius(10)
                .frame(maxWidth: 250)
            
        } .padding(.horizontal, 70)
        .padding()
        .padding(.top,20)
        .background(Color("Main"))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
