//
//  articleCard.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/6/20.
//

import SwiftUI

struct articleCard: View {
    var title : String
    var content : String
    var image : String

    
    var body: some View {
     
        
        HStack(alignment:.top, spacing:15) {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .clipShape(Rectangle())
                    
                    
                VStack(alignment:.leading ) {
                    Text(title)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.bottom, 5)
                        
                    Text(content)
                        .frame(width:200, alignment: .leading)
                        
                        
                        
                }
                .frame(height: 80)
                .padding(.vertical, 5)
                .padding(.trailing, 5)
                
        }
      
        
        .background(Color.white)
        .clipShape(Rectangle())
        .cornerRadius(10)
        .shadow(color: Color(#colorLiteral(red: 0.368627451, green: 0.3215686275, blue: 0.3215686275, alpha: 1)).opacity(0.2), radius: 10, x: 4, y: 4)
        

    }
}

struct articleCard_Previews: PreviewProvider {
    static var previews: some View {
        articleCard(title: "Text Placeholder", content: "Earing made out of SCOBY leather. ", image: "brewIcon")
    }
}
