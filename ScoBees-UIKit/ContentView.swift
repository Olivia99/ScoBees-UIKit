//
//  ContentView.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/3/20.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
        BrewsData()
    }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Home: View {
    
    var body : some View{
        Text("hello")
        
    }
    
}

//class getBrewsData: ObservedObject {
//    @Published var brewData = [Brews]()
//
//    init(){
//
//    }
//
//}
//
//struct Brews : Identifiable {
//    var name : String
//    var startDate : Date
//    var endDate: Date
//    var pic : String
//}
//

