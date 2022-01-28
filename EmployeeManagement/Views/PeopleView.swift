//
//  ContentView.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import SwiftUI

struct PeopleView: View {
@EnvironmentObject var model:EmployeeModel
@EnvironmentObject var premodel:Preferences
    var body: some View {
        VStack{
            Text("People")
                .font(.system(size:40))
                .multilineTextAlignment(.center)
                
        List(model.person){ p in
            VStack(alignment: .leading){
        if premodel.showname == true{
         Text("Name: " + p.Name)
                    .padding(.leading)}
        if premodel.showaddress == true{
           Text("   Address: " + p.Address)
                                       }
        if premodel.showcompany == true{
            Text("   Company: " + p.Company)
        }
        if premodel.showyears == true{
            Text("   YearsofExperience: " + String(p.YearsofExperience))
        }
            }
            
        
        }
        
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView().environmentObject(EmployeeModel())
            .environmentObject(Preferences())
    }
}
