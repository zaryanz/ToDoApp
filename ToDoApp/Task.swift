//
//  Task.swift
//  ToDoApp
//
//  Created by Aryan Singh on 04/06/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title: String = ""
    @Persisted var completed: Bool = false
}
