//
//  CharacterRow.swift
//  MapleTodo_swiftUI
//
//  Created by 이서림 on 2020/02/22.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    var character : Character
    var body: some View {
        ZStack{
            Image(character.name)
                .resizable()
                //.scaledToFit()
                .frame(width:200, height: 200)
                .offset(x:3 ,y:-25)
                .background(Color.gray)
                //.cornerRadius()
                //.mask(Rectangle().padding(.all).cornerRadius(10))
                .padding(.all, -20)
            
                //.clipShape(Circle())
                //.overlay(Circle().stroke(Color.gray, lineWidth: 6))
            
            VStack(alignment:.center){
                Text(character.name)//.font(Font.custom("Maplestory", size: 20))
                //Text(String(character.level))
                    .font(.caption)
                
            }.offset(y: 60)
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CharacterRow(character: characterData[0])
            CharacterRow(character: characterData[1])
        }
        .previewLayout(.sizeThatFits)
    }
}
