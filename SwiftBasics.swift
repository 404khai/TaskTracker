//
//  SwiftBasics.swift
//  TaskTracker
//
//  Created by admin on 5/26/26.
//

import Playgrounds

#Playground {
    var playerName = "Alex"
    let maxScore = 100
    
    playerName = "Jordan"
    
    var age: Int = 28
    var price: Double = 19.99
    var isActive: Bool = false
    var message: String = "Hello, World"
    
    var colors: [String] = ["Red", "Blue"]
    colors.append("Yellow")
    
    var user: [String: String] = [
        "name": "Khai",
        "Role": "Developer"
    ]
    
    func greet() {
        print("Hello World")
    }
    
    greet()
    
    func calculateTotal(price: Double, quantity: Int) -> Double {
        return price * Double(quantity)
    }
    
    calculateTotal(price: 34.5, quantity: 31)
}
