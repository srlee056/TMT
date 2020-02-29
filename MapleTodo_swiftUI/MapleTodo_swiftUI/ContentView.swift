//
//  ContentView.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/19.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init(){
           UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Maplestory", size: 30)!]

    }
    var body : some View{
       TodoListView().environmentObject(UserData())
        /*
        TabView{
            TodoListView().environmentObject(UserData())
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Todo")
            }
            CharacterListView().environmentObject(UserData())
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("캐릭터")
            }
            PresetListView().environmentObject(UserData())
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("프리셋")
            }
            
        }
 */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
