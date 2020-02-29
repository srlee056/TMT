//
//  PresetListView.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/21.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI



struct PresetListView : View{
    var presets: [String: [Character]]{
        Dictionary(
            grouping : characterData,
            by: {$0.preset}
        )
    }
    //let preset : Preset
    var body: some View{
        NavigationView{
            List{
                ForEach(self.presets.keys.sorted(), id: \.self){ key in
                    //Text(key)
                    PresetRow(presetName: key, items: self.presets[key]!)
                    
                }.listRowInsets(EdgeInsets()) //content can extend to the edges of the display.
            }
            .navigationBarTitle("", displayMode: .inline)
            /*List(presetData, id:\.id){ preset in
                NavigationLink(destination: PresetDetail(preset: preset).environmentObject(UserData())) {
                    PresetRow(preset:preset)
                }
            }
            
            .navigationBarItems(trailing: EditButton())
            
 */
        }
    }
}
/*
struct PresetCell:View{
    let preset:Preset
    var body : some View{
        HStack{
            Image(preset.pImage)
            .resizable()
                .frame(width:50, height: 50)
            
            Text(preset.pName)
            
        }
    }
}
*/
struct PresetListView_Previews: PreviewProvider {
    static var previews: some View {
        PresetListView().environmentObject(UserData())
    }
}
