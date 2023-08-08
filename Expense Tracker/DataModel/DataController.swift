//
//  DataController.swift
//  Expense Tracker
//
//  Created by alex on 4/1/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ExpenseTracker")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load data in data controller \(error.localizedDescription)")
            }
        }
    }
}
