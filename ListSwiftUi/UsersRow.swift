//
//  UsersRow.swift
//  ListSwiftUi
//
//  Created by Володя Зверев on 10/9/21.
//

import SwiftUI

struct UsersRow: View {
    let user: User
    
    @State var isLike: Bool
    
    var body: some View {
        HStack {
            Image(user.image)
                .resizable()
                .frame(width: 50, height: 50
                       , alignment: .center)
                .background(Color("Color"))
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.purple, lineWidth: 2))
            VStack(alignment: .leading) {
                Text(user.name).font(.headline)
                Text(user.description)
                    .font(.subheadline).lineLimit(nil)
            }
            Spacer()
            Button(action: {
                isLike.toggle()
            }, label: {
                Image(isLike ? "like" : "like_false")
                    .resizable()
                    .frame(width: 24, height: 24, alignment: .center)
            })
            
            
        }.padding()
    }
}

struct UsersRow_Previews: PreviewProvider {
    static var previews: some View {
        UsersRow(user: User(id: 0, name: "Tim", description: "Zverev", image: "desktop"), isLike: false)
    }
}
