//
//  FloatingButton.swift
//  ToDoApp
//
//  Created by Aryan Singh on 04/06/23.
//

import SwiftUI

struct FloatingButton: View {
    var body: some View {
        ZStack {
            Circle().frame(width: 70, height: 70).foregroundColor(.blue)
                Text("+")
                    .font(.largeTitle)
                    .foregroundColor(.white)
        }
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}
