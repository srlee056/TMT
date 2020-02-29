//
//  Preset.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI


struct Preset : Hashable, Codable, Identifiable{
    var id : Int
    var name : String
    struct Selection: Hashable, Codable{
        var todoId: Int
        var isSelected : Bool
    }
    var selections : [Selection]
}
