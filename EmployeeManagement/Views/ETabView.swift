//
//  TabView.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import SwiftUI

struct ETabView: View {
    var body: some View {
        TabView{
            PeopleView().tabItem{
                VStack{
                   Image(systemName:"person.3")
                   Text("Current Employees")
                }
                }
           DisplayPreferenceView().tabItem{
                VStack{
                 Image(systemName:"gearshape")
                 Text("Perference")
                }
         }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        ETabView().environmentObject(EmployeeModel())
            .environmentObject(Preferences())
    }
}
