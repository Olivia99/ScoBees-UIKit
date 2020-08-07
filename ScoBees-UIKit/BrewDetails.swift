//
//  BrewDetails.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/5/20.
//

import SwiftUI

struct BrewDetails: View {
    
//    var brew : Brews
    
    @ObservedObject var brews = getBrewsData()
    
    var body: some View {
        
        
        
        ScrollView {
            
            batchImageView()
            
            HStack {
                Spacer()
                articleCard(title: "Future Material", content: "Earing made out  of Kombucha leather", image: "socbyEaring")
                Spacer()
            }
            .padding(.vertical, 40)
            .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
            Date()
            Ingredients()
            Note(note: "")
            
        }
        .navigationTitle("Brew")
        
        
        
    }
}



struct BrewDetails_Previews: PreviewProvider {
    static var previews: some View {
        BrewDetails()
    }
}



struct sectionTitle: View {
    var text : String
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity,alignment: .leading)
    }
}




struct batchImageView: View {
    var body: some View {
        HStack(alignment: .top){
            
            Spacer()
            VStack {
                Image("brewJar")
                Text("Tap to add a photo")
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .frame(width:320)
            .overlay(
                
                VStack {
                    Image("brewIcon")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .topLeading)
                    Text("Top View")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                },
                alignment: .topLeading)
            
            
            Spacer()
        }
        .padding(.top, 30)
        .padding(.bottom, 30)
        .background(Color(#colorLiteral(red: 1, green: 0.9215686275, blue: 0.8470588235, alpha: 1)).opacity(0.2))
    }
}



struct Date: View {
    var body: some View {
        VStack (alignment:.leading)  {
            sectionTitle(text: "Date")
            
            
            VStack(alignment: .trailing) {
                HStack() {
                    Text("3/20")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("days")
                        .font(.footnote)
                }
                ProgressBar()
            }.padding(.vertical, 20)
            
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 15)
    }
}




struct Ingredients: View {
    var body: some View {
        VStack {
            sectionTitle(text: "Ingredients")
            
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 45) {
                
                
                Ingredient(image: "water", color: Color(#colorLiteral(red: 0.8941176471, green: 0.9764705882, blue: 1, alpha: 1)), num: "5", unit: "L", ingredient: "Water")
                
                Ingredient(image: "sugar", color: Color(#colorLiteral(red: 1, green: 0.9803921569, blue: 0.8745098039, alpha: 1)), num: "50", unit: "g", ingredient: "Sugar")
                
                Ingredient(image: "tea", color: Color(#colorLiteral(red: 0.9333333333, green: 1, blue: 0.9411764706, alpha: 1)), num: "8", unit: "tbag", ingredient: "Base Tea")
                
                Ingredient(image: "jar", color: Color(#colorLiteral(red: 1, green: 0.9725490196, blue: 0.9450980392, alpha: 1)), num: "50", unit: "ml", ingredient: "Starter Tea")
                
                
            }
            .padding(.vertical, 20)
            
        }.padding(.horizontal, 30)
        .padding(.vertical, 15)
    }
}


struct Note : View{
    
    public struct CustomTextFieldStyle : TextFieldStyle {
          public func _body(configuration: TextField<Self._Label>) -> some View {
              configuration
                  .font(.body)
                  .padding(10) // Set the inner Text
                 
                .frame(height:100, alignment: .topLeading)
                .cornerRadius(10)
                .shadow(color: Color(#colorLiteral(red: 0.368627451, green: 0.3215686275, blue: 0.3215686275, alpha: 1)).opacity(0.2), radius: 10, x: 4, y: 4)
          }
    }
    
    
    
    @State var note : String
    
    var body : some View {
        VStack{
            sectionTitle(text: "Note")
            
            TextField("What's in your mind..?", text: $note)
                .textFieldStyle(CustomTextFieldStyle())
                .foregroundColor(.secondary)
                .background(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                .shadow(color: Color(#colorLiteral(red: 0.3529411765, green: 0.3921568627, blue: 0.5294117647, alpha: 1)).opacity(0.2), radius: 10, x: 4, y: 4)
                
                
            
            
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 15)
    }
    
}