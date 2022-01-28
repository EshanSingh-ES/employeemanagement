//
//  DisplayPreferenceView.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import SwiftUI

struct DisplayPreferenceView: View {
   @EnvironmentObject var model:Preferences
    var body: some View {
        VStack{
            Text("Display Preferences")
                .font(.system(size:40))
                .multilineTextAlignment(.center)
                
        List{
            Toggle("Show Name",isOn:$model.showname)
            Toggle("Show Address",isOn:$model.showaddress)
            Toggle("Show Company",isOn:$model.showcompany)
            Toggle("Show Years",isOn:$model.showyears)
        }
        }
    }
}

struct DisplayPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayPreferenceView().environmentObject(Preferences())
    }
}
