//
//  UserData.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI
import Combine

class UserData: ObservableObject  {
    //https://www.hackingwithswift.com/books/ios-swiftui/making-changes-permanent-with-userdefaults 참고함
    
    init() {
        if let todos = UserDefaults.standard.data(forKey: "todos") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Todo].self, from: todos) {
                self.todos = decoded
                return
            }
        }
        self.todos = []
        //self.todos = todoData
    }
    
    @Published var todos : [Todo]{
         didSet {
               let encoder = JSONEncoder()
               if let encoded = try? encoder.encode(todos) {
                   UserDefaults.standard.set(encoded, forKey: "todos")
               }
           }
        
        
        }
    //@Published var todos = todoData
    @Published var characters = characterData
    @Published var presets = presetData
}
