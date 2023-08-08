//
//  Expense_TrackerApp.swift
//  Expense Tracker
//
//  Created by alex on 4/1/23.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
