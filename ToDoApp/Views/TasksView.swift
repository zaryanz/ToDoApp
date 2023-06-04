//
//  TasksView.swift
//  ToDoApp
//
//  Created by Aryan Singh on 04/06/23.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        VStack {
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            if !realmManager.tasks.isEmpty {
                List {
                    ForEach(realmManager.tasks, id: \.id) {
                        task in
                        if !task.isInvalidated {
                            TaskRow(task: task.title, completed: task.completed).onTapGesture {
                                print("tap gesture trigerred")
                                realmManager.updateTask(id: task.id, completed: !task.completed)
                            }
                            .swipeActions(edge: .trailing) {
                                Button(role: .destructive) {
                                    realmManager.deleteTask(id: task.id)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                    }
                }            .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
                    .scrollContentBackground(.hidden)
            } else {
                Color.clear
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView().environmentObject(RealmManager())
    }
}
