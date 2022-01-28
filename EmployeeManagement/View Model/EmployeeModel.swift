//
//  EmployeeModel.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import Foundation
class EmployeeModel:ObservableObject{

@Published var person = [Person]()

init(){
    person.self = DataFetching.getLocalData()
}

}
class Preferences:ObservableObject{
    @Published var showname = true
    @Published var showaddress = true
    @Published var showcompany = true
    @Published var showyears = true
}
