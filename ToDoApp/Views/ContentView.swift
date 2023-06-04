//
//  ContentView.swift
//  ToDoApp
//
//  Created by Aryan Singh on 04/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView().environmentObject(realmManager)
            
            FloatingButton()
                .padding()
                .onTapGesture {
                   showAddTaskView = true
                }
            
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView().environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
