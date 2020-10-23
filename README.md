# iOS-Swift-BDD-Cucumberish (Section 8)

My Testing implementation for course about BDD Acceptance Testing (section 8): https://www.udemy.com/course/testing-ios-apps-behavior-driven-development-using-swift/

# Example: 

## BDD Specs

### Feature: Adding Tasks

### Scenario: As a user, I want to add todo tasks to my list

```
Given I launch the App
When I add "Wash the car" as a task
Then I should have "1" item in the list
```


## Implementation
```swift
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

```
