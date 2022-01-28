//
//  Employee.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import Foundation
class Person:Identifiable,Decodable{
    var id:UUID?
    var Name:String
    var Address:String
    var Company:String
    var YearsofExperience:Int
}
