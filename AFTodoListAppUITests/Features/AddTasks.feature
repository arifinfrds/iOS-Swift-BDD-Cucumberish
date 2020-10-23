
Feature: Adding Tasks

Scenario: As a user, I want to add todo tasks to my list

Given I launch the App
When I add "Wash the car" as a task
Then I should have "1" item in the list



Scenario: As a user, when I start the app first time, I should not see any taks

Given I launch the App for the first time
Then I should have 0 item in the list

