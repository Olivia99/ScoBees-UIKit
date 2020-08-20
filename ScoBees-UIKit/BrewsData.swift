//
//  BrewsData.swift
//  ScoBees-UIKit
//
//  Created by Jieying Yang on 8/4/20.
//

import SwiftUI
import Firebase
import SDWebImage

struct BrewsData: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var brews = getBrewsData()
    
    //
    //    @State var brewName = "Green Tea Batch"
    //    @State var image = "icon"
    //    @State var startDate = "07-29-2020"
    //    @State var FTime = "15"
    
    @State var showSheet = false
    
    
    var body: some View {
        
        if self.brews.datas.count != 0 {
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 10) {
                    
                    
                    
                    
                    ForEach(self.brews.datas){i in
                        
                        
                        NavigationLink(destination: BrewDetails(data: i)){
                            BrewCellView(data: i)
                            
                        }
                      
                    }
                }
                
            }
            .sheet(isPresented: self.$showSheet) {
                //                    BrewDetails(data: i)
                
//                EditBrew(data: i)
            }
            .navigationBarTitle(Text("My Brews"), displayMode: .large )
            .navigationBarItems(trailing: Button(action: {
                self.showSheet.toggle()
            }, label: {
                Image("plus")
            }))
            
        }
        
        
        
        //
        //            Button(action: {
        //                addInfo(brewName: self.brewName, image: self.image, startDate: self.startDate, FTime: self.FTime)
        //            }, label: {
        //                Text("Add Brew")
        //            })
        //
        //            Button(action: {
        //                self.showSheet = true
        //            })
        //            {
        //                Text("Edit Brew")
        //            }.sheet(isPresented: self.$showSheet) {
        //               Text("Editing Brew")
        //                Button(action:{
        //                    // will put update here
        //
        //
        //
        //                    self.showSheet = true
        //
        //                }){
        //                    Text("Update Brew")
        //
        //                }
        //            }
        
        
        
        
    }
    
    //    func addInfo(brewName: String, image: String, startDate : String, FTime: String){
    //
    //        let db = Firestore.firestore()
    //        db.collection("Brews").document().setData(["brewName": brewName, "image": image, "startDate" :startDate , "FTime": FTime])
    //    }
    
}

struct BrewsData_Previews: PreviewProvider {
    static var previews: some View {
        BrewsData()
    }
}


class getBrewsData : ObservableObject {
    
    @Published var datas = [Brews]()
    
    init(){
        let db = Firestore.firestore()
        
        db.collection("Brews").addSnapshotListener { (snap, err) in
            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges{
                let id = i.document.documentID
                let brewName = i.document.get("brewName") as! String
                let pic = i.document.get("pic") as! String
                let endDate = i.document.get("endDate") as! String;
                let water = i.document.get("water") as! String
                let waterUnit = i.document.get("waterUnit") as! String
                let sugar = i.document.get("sugar") as! String
                let sugarUnit = i.document.get("sugarUnit") as! String
                let starterTea = i.document.get("starterTea") as! String
                let starterTeaUnit = i.document.get("starterTeaUnit") as! String
                let tea = i.document.get("tea") as! String
                let teaUnit = i.document.get("teaUnit") as! String
                
                self.datas.append(Brews(id: id, brewName: brewName, pic: pic, endDate: endDate, starterTea: starterTea, starterTeaUnit: starterTeaUnit, sugar: sugar, sugarUnit: sugarUnit, tea: tea, teaUnit: teaUnit, water: water, waterUnit: waterUnit))
            }
        }
        
    }
}



struct Brews : Identifiable {
    
    var id : String
    var brewName : String
    var pic : String
    var endDate : String
    
    //
    //    var startDate : Date
        var starterTea : String
        var starterTeaUnit : String
        var sugar : String
        var sugarUnit : String
        var tea : String
        var teaUnit : String
        var water : String
        var waterUnit : String
    
}


struct BrewCellView : View{
    var data : Brews
    @State var show = false
    
    var body: some View{
        VStack {
            HStack (spacing:20){
                Image(data.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 65, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                VStack (alignment: .leading) {
                    Text(data.brewName)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding(.bottom, 5)
                    HStack (spacing: 3) {
                        Text("Ready by")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Text(data.endDate)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }.padding(.bottom,5)
                    
                    ProgressBar()
                }
                
                Spacer()
            }.padding()
        }
    }
}
