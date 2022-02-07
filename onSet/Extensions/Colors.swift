//
//  Extensions.swift
//  componiendo
//
//  Created by Francisco Valdez on 20/5/21.
//

import UIKit
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension Color {
    static let colorBewiyo = Color(red: 1, green: 0.247, blue: 0.286)
    
    static let darkerteal = Color(red: 0.153, green: 0.297, blue: 0.392)
    static let darkertealL = Color(red: 0.188, green: 0.374, blue: 0.490)
    static let plomo = Color(red: 0.053, green: 0.197, blue: 0.292)
    
    static let medteal = Color(red: 0.182, green: 0.412, blue: 0.549)
    static let medtealL = Color(red: 0.215, green: 0.488, blue: 0.650)
    
    static let cremita = Color(red: 0.902, green: 0.886, blue: 0.822)
    static let cremitaL = Color(red: 0.950, green: 0.933, blue: 0.866)
    
    static let cremitin = Color(red: 0.969, green: 0.953, blue: 0.914)
    static let cremitinL = Color(red: 1, green: 0.980, blue: 0.920)
    
    static let mifush = Color(red: 1, green: 0.247, blue: 0.286)
    static let mifushL = Color(red: 1, green: 0.390, blue: 0.421)
    
    static let shagreen = Color(red: 0.639, green: 0.824, blue: 0.792)
    static let shagreenL = Color(red: 0.714, green: 0.920, blue: 0.885)
    
    static let materra = Color(red: 0.941, green: 0.349, blue: 0.271)
    static let materraL = Color(red: 1, green: 0.435, blue: 0.360)
    
    static let offwhite = Color(red: 0.93, green: 0.93, blue: 0.93)
    static let nonwhite = Color(red: 0.96, green: 0.977, blue: 0.977)
    static let whiteblu = Color(red: 0.77, green: 0.77, blue: 0.82)
    
    
    static let offblack = Color(red: 0.191, green: 0.197, blue: 0.197)
}


