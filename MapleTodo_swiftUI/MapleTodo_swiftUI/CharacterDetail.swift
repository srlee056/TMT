//
//  CharacterDetail.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/21.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

/*


var body: some View {
   VStack {
      
      Text("You selected: \(servers[selectedServer])")
   }
}
*/

struct CharacterDetail: View {
    var servers = ["오로라", "레드", "이노시스", "유니온", "스카니아", "루나", "제니스", "크로아", "베라", "엘리시움", "아케인", "노바", "버닝", "버닝2", "리부트", "리부트2"]
    //@State private var selectedServer = 0
    @State var date = Date()
    @State var submit = false
    @State var pickerToggle = false
    
    @EnvironmentObject var userData : UserData
    @Environment(\.presentationMode) var presentationMode
    
    let character : Character
    var characterIndex:Int{
        userData.characters.firstIndex(where: {$0.id == character.id})!
    }
        var body: some View {
            
       // NavigationView{
            VStack {
                
                    Image(character.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.padding(.top, -150)
                List{
                    HStack{
                        Text(character.name)
                            .font(.title)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    HStack {
                        Text("레벨")
                        //TextField(
                        Spacer()
                        TextField("", value: $userData.characters[characterIndex].level, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width:40)
                            .multilineTextAlignment(.trailing)
                            
                    }.padding(.horizontal, 10)
                    
                    HStack {
                        Text("분류")
                        Spacer()
                        Button(action:{
                        }) {
                            Text(character.preset)
                        }
                    }.padding(.horizontal, 10)
                        
                    HStack{
                        Text("서버")
                        Spacer()//.frame(width:50)
                        Button(action: {
                            self.pickerToggle.toggle()
                            }) {
                            Text(servers[userData.characters[self.characterIndex].server])
                        }
                    }.padding(.horizontal ,10)

                    if pickerToggle {
                        Picker(selection:  $userData.characters[self.characterIndex].server , label: Text("서버").frame(width:40)
                                ) {
                           ForEach(0 ..< servers.count) {
                                Text(self.servers[$0]).tag($0)
                           }
                                    
                        }.padding(.all)
                    }
                    //Spacer()
                   
                }
            }.navigationBarTitle("캐릭터 정보", displayMode: .inline)
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Go Back")
                }, trailing: Button(action: {
                    self.submit.toggle()
                }) {
                    Text("Submit")
                }.alert(isPresented: $submit){
                    Alert(title: Text("저장대따"))
            })

  
            
//            .navigationBarTitle("내 캐릭터")
       // }
    }
}
            

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: characterData[0]).environmentObject(UserData())
    }
}
