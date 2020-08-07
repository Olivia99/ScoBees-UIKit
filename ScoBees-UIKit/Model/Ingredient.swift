//
//  Ingredient.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/6/20.
//

import SwiftUI

struct Ingredient: View {
    
    var image : String
    var color : Color
    var num : String
    var unit : String
    var ingredient : String
    
    var body: some View {
        
        VStack {
            Circle()
                .frame(width: 95, height: 95, alignment: .center)
                .overlay(Image(image).offset(x: -8, y: 15), alignment: .bottom)
                .padding(.bottom, 20)
                .foregroundColor(color)
            
            Text(num + " " + unit)
            Text(ingredient)
           
        }
        
        
    }
}

struct Ingredient_Previews: PreviewProvider {
    static var previews: some View {
        Ingredient(image: "water", color: Color(#colorLiteral(red: 0.8941176471, green: 0.9764705882, blue: 1, alpha: 1)), num: "5", unit: "L", ingredient: "Water")
    }
}
