//
//  TodoListHomePage.swift
//  AFTodoListAppUITests
//
//  Created by Arifin Firdaus on 23/10/20.
//

import Foundation
import XCTest


/// Page Object Pattern

class TodoListHomePage {
    
    func launch() {
        XCUIApplication().launch()
    }
    
    func typeInTaskTextField(_ text: String) {
        let taskTextField = XCUIApplication().textFields["taskTextField"]
        taskTextField.tap()
        taskTextField.typeText(text + "\n")
    }
    
    func tapAddTaskButton() {
        XCUIApplication().buttons["addTaskButton"].tap()
    }
    
    var totalTasks: Int {
        return XCUIApplication().tables.children(matching: .cell).count
    }
    
}
