//
//  Todo.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct Todo: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    //fileprivate var imageName: String
    var level : Int
    //var category: Categorys
    var isCompleted : Bool
    //var image: Image
/*
    enum Category: String, CaseIterable, Codable, Hashable {
        case dayQuest = "day Quest"
        case weekQuest = "week Quest"
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
    */
}

