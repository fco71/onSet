//
//  CenterModifier.swift
//  Africa
//
//  Created by Francisco Valdez on 23/1/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
