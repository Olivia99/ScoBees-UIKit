//
//  EditBrew.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/12/20.
//

import SwiftUI

struct EditBrew: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var data : Brews
    
    @State var startDate = Date()
    @State var endDate = Date()
    @State var selection = 1
    @State var brewName = ""
    
    @State var water = "0"
    @State var waterUnit = ["fl oz", "ml", "L"]
    
    
    var dates = ["Start Date", "Brewing Dyas", "Finish Date" ]
    var body: some View {
        
        
        NavigationView {
            Form {
                
                Section{
                    
                    
                    sectionTitle(text: "Brew Name")
                        .padding(.bottom, 10)
                    
                    HStack {
                        TextField(data.brewName, text: $brewName)
                            .background(Color.white)
                    }
                    .textfieldStyle()
                    
                }
                
                Section{
                    sectionTitle(text: "Dates")
                        .padding(.bottom, 10)
                    DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
                        .multilineTextAlignment(.trailing)
                    
                    
                    DatePicker(selection: $endDate, displayedComponents: .date){
                        Text("End Date  ")
                        
                        
                    }
                    .multilineTextAlignment(.trailing)
                    
                }
                
                Section{
                    sectionTitle(text: "Ingredients")
                    
                    HStack {
                        Text("Water")
                        
                        
                        Spacer()
                        HStack(alignment: .center){
                            
                            
                            TextField("0", text: $water)
                                .background(Color.white)
                                .textfieldStyle()
                                .frame(width: 100)
                                .multilineTextAlignment(.trailing)
                            
                            Picker(selection: $selection, label: Text( ""), content: /*@START_MENU_TOKEN@*/{
                                Text("fl oz").tag(1)
                                Text("ml").tag(2)
                                Text("L").tag(3)
                            }/*@END_MENU_TOKEN@*/)
                            .frame(width: 60)
                        }
                        
                        
                        
                    }
                }
                
                
            }
    
            .background(Color.red)
            
            
            .navigationBarTitle("Edit Brew",displayMode: .inline)
            
            .navigationBarItems(
                leading:Button("Cancel") {
                print("Cancel tapped!")
                    self.presentationMode.wrappedValue.dismiss()
                 
                },
            trailing:Button("Save") {
                    print("Save tapped!")}
            )
            
            
        }
        
        
    }
}

//struct EditBrew_Previews: PreviewProvider {
//    static var previews: some View {
//        EditBrew(data: Brews)
//    }
//}





