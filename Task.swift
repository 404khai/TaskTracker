//
//  Task.swift
//  TaskTracker
//
//  Created by admin on 5/26/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title = String()
    var isCompleted: Bool = false
}
