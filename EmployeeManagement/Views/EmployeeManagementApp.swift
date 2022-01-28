//
//  EmployeeManagementApp.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import SwiftUI

@main
struct EmployeeManagementApp: App {
    var body: some Scene {
        WindowGroup {
            ETabView()
                .environmentObject(EmployeeModel())
                .environmentObject(Preferences())
        }
    }
}
