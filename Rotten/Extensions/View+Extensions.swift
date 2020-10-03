//
//  View+Extensions.swift
//  Rotten
//
//  Created by Andimas Bagaswara on 03/10/20.
//

import Foundation
import SwiftUI

extension View {
    
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
