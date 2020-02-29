//
//  Character.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct Character: Hashable, Codable, Identifiable {
    var id:Int
    var name : String
    var level : Int
    var server : Int
    var preset : String
    
}
