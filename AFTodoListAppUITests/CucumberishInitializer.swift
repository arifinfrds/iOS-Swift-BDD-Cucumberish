//
//  CucumberishInitializer.swift
//  AFTodoListAppUITests
//
//  Created by Arifin Firdaus on 23/10/20.
//

import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {
        let todoListHomePage = TodoListHomePage()
        
        before { _ in
            
            
            // MARK: - Scenario: As a user, I want to add todo tasks to my list
            
            Given("I launch the App") { (args, userInfo) in
                todoListHomePage.launch()
            }
            
            When("I add \"([^\\\"]*)\" as a task") { (args, _) in
                let task = (args?[0])!
                todoListHomePage.typeInTaskTextField(task)
                todoListHomePage.tapAddTaskButton()
            }
            
            Then("I should have \"([^\\\"]*)\" item in the list") { (args, _) in
                let itemCount = Int((args?[0])!)!
                XCTAssertEqual(itemCount, todoListHomePage.totalTasks)
            }
            
            
            // MARK: - Scenario: As a user, when I start the app first time, I should not see any taks
            
            Given("I launch the App for the first time") { (_, _) in
                todoListHomePage.launch()
            }
            
            Then("I should have 0 item in the list") { (_, _) in
                XCTAssertEqual(todoListHomePage.totalTasks, 0)
            }

        }
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(
            inDirectory: "Features",
            from: bundle,
            includeTags: nil,
            excludeTags: nil
        )
    }
}
