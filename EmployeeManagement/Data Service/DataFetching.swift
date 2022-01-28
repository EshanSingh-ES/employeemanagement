//
//  DataFetching.swift
//  EmployeeManagement
//
//  Created by Eshan Singh on 27/01/22.
//

import Foundation
class DataFetching {
    
    static func getLocalData() -> [Person] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Person]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let EmployeeData = try decoder.decode([Person].self, from: data)
                
                // Add the unique IDs
                for e in EmployeeData {
                    e.id = UUID()
                }
                // Return the recipes
                return EmployeeData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [Person]()
    }
    
}
