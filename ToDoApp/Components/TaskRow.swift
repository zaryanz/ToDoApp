//
//  TaskRow.swift
//  ToDoApp
//
//  Created by Aryan Singh on 04/06/23.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "checkmark.circle": "circle")
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Misc", completed: true)
    }
}
