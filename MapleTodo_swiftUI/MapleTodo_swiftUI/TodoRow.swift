//
//  TodoRow.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct TodoRow: View {
    @EnvironmentObject var userData : UserData
    var todo : Todo

    var todoIndex:Int{
        userData.todos.firstIndex(where: {$0.id == todo.id})!
    }
    
    var defaults = UserDefaults.standard
    
    var body: some View {

            Button(action: {
                self.userData.todos[self.todoIndex].isCompleted.toggle()
            }) {
                //defaults.set(userData.todos, forKey: "todos")
                if self.userData.todos[self.todoIndex].isCompleted{
                    Text(todo.name).strikethrough(true)
                }
                else{
                    Text(todo.name).strikethrough(false)
                }
            }

    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TodoRow(todo: todoData[0]).environmentObject(UserData())
            TodoRow(todo: todoData[4]).environmentObject(UserData())
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
