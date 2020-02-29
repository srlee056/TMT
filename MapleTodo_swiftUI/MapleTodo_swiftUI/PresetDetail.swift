//
//  PresetDetail.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/21.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct PresetDetail: View {
    //@State var toggling = false
    //@State var tg1 = false
    @EnvironmentObject var userData : UserData
    @Environment(\.presentationMode) var presentationMode
    
    let preset : Preset
    
    var presetIndex:Int{
        userData.presets.firstIndex(where: {$0.id == preset.id})!
    }
    var selections:  Binding<[Preset.Selection]> {
        $userData.presets[presetIndex].selections
    }
    
    func getTodoIndex (index:Int) -> Int{
        return userData.todos.firstIndex(where: {$0.id == userData.presets[presetIndex].selections[index].todoId})!
    }
    
    var body: some View {
        
            
            List(self.userData.presets[self.presetIndex].selections.indices){ index in
                Toggle(self.userData.todos[self.getTodoIndex(index: index)].name, isOn: self.$userData.presets[self.presetIndex].selections[index].isSelected)
            }.navigationBarTitle("프리셋 수정", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }){
                Text("Go Back")
        })
            //Spacer()
    }
    
}

struct PresetDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        PresetDetail(preset: presetData[0]).environmentObject(UserData())
    }
}
