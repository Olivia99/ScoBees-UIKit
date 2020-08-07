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
        
        
        TabView {
            NavigationView {
                BrewDetails()
            }
            .tabItem {
                Image(systemName: "doc.text")
                Text("Discover")
            }
            
            NavigationView {
                BrewDetails()
            }
            
            .tabItem {
                Image(systemName: "cart")
                Text("Shop")
                
            }
            
            NavigationView {
                BrewsData()
            }
            .tabItem {
                Image(systemName: "clock")
                Text("Brews")
            }
            
            
            NavigationView {
                BrewsData()
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
            
            
            
        }
        
        
        
        
        
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

