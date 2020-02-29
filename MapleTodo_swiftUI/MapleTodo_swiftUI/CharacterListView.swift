//
//  CharacterListView.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/21.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct CharacterListView: View {
    
    
    
    var body: some View {
        NavigationView {
            
            List(characterData, id:\.id){ character in
                NavigationLink(destination: CharacterDetail(character:character)) {
                    CharacterRow(character: character)
                        //EmptyView()
                }
                
            }
 
                //.onMove(perform: move)
                //.navigationBarTitle("당신의 캐릭터", displayMode: .inline)
        //.navigationBarItems(trailing: EditButton())
        }
    }

//    func move(from source:IndexSet, to destination:Int){
//        characters.move(fromOffsets: source, toOffset: destination)
//    }
}



struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView().environmentObject(UserData())
    }
}
