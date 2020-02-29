//
//  PresetRow.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct PresetRow: View {
    //var preset : Preset
    var presetName : String
    var items : [Character]
    
    var body: some View {
        VStack (alignment: .leading){
            Text(presetName)
                //.multilineTextAlignment(.leading)
                .font(.headline)
                .padding(.leading, 15)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 5){
                    ForEach(self.items) {c in
                        CharacterRow(character: c)
                        //.padding(.leading, 10)
                            .cornerRadius(15)
                            //.padding(.all, 5)
                    }
                }
            }.padding(.leading, 15)
        }.frame(height:220)
    }
}

struct PresetRow_Previews: PreviewProvider {
    static var previews: some View {
        PresetRow(presetName: presetData[0].name, items:characterData)
    }
}
