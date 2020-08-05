//
//  ProgressBar.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/4/20.
//

import SwiftUI

struct ProgressBar: View {
    
    
    var body: some View {
        HStack {
            VStack {
               
            }
            .frame(width: 250, height: 8, alignment: .center)
            .background(Color(#colorLiteral(red: 0.8784313725, green: 0.9058823529, blue: 0.9254901961, alpha: 1)).opacity(0.6))
            .cornerRadius(10)
            
            
        }
        
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}



