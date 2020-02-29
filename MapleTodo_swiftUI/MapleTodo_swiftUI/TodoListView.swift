//
//  TodoListView.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/19.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI
import Combine

struct TodoListView: View {
    @EnvironmentObject var userData: UserData
    @State var showLeftSheetView = false
    @State var showRightSheetView = false
    var body: some View {
        
        NavigationView {
            List(todoData, id:\.id){ todo in
                TodoRow(todo: todo)
            }
            .navigationBarTitle(Text("메할일"), displayMode: .inline)
            .navigationBarItems(leading:
                Button(action: {
                    self.showLeftSheetView.toggle()
                }) {
                    Image(systemName: "list.bullet")
                        .font(Font.system(.title))
                        .foregroundColor(Color.gray)
                }.sheet(isPresented: $showLeftSheetView) {
                    PresetListView()}
            , trailing:
                Button(action: {
                    self.showRightSheetView.toggle()
                }) {
                    Image(systemName: "person.crop.circle")
                        .foregroundColor(Color.gray)
                }.sheet(isPresented: $showRightSheetView) {
                CharacterListView()}
            )
        
        }
        
    }

}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView().environmentObject(UserData())
    }
}
