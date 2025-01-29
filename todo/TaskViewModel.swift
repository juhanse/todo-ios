//
//  TaskViewModel.swift
//  todo
//
//  Created by Julien Hanse on 24/01/2025.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

class TaskViewModel: ObservableObject {
    @Published var tasks = [Task]()
    
    func addTask(_ title: String) {
        tasks.append(Task(title: title, isCompleted: false))
    }
    
    func isCompleted() {
        
    }
}
