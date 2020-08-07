//
//  ProgressBar.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/4/20.
//

import SwiftUI

struct ProgressBar: View {
//    var days : CGFloat
    
    var body: some View {
       
            
        ZStack(alignment:.leading) {
            Capsule()
                .frame(maxWidth: .infinity)
                .foregroundColor(Color(#colorLiteral(red: 0.8784313725, green: 0.9058823529, blue: 0.9254901961, alpha: 1)).opacity(0.6))
            
            Capsule()
                .frame(width:60)
                .foregroundColor(Color("brandColor"))
        }
        .frame(height:8)
                
            
    
        
        
        
       
        
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}



