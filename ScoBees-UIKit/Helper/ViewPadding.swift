//
//  paddingModifier.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/12/20.
//

import SwiftUI

struct ViewPadding: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 30)
            .padding(.vertical, 15)
    }
 

}

extension View {
    func paddingStyle() -> some View{
        self.modifier(ViewPadding())
    }
}


