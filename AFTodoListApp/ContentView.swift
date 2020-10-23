//
//  ContentView.swift
//  AFTodoListApp
//
//  Created by Arifin Firdaus on 23/10/20.
//

import SwiftUI

struct ContentView: View {
    @State private var taskName: String = ""
    @State private var tasks = [String]()
    
    var body: some View {
        VStack {
            TextField("Enter a task", text: $taskName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .accessibilityIdentifier("taskTextField")
            
            Button("Add task") {
                tasks.append(taskName)
            }
            .accessibilityIdentifier("addTaskButton")
            
            List(tasks, id: \.self) { task in
                Text("\(task)")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
