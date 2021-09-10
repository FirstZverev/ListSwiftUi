//
//  ContentView.swift
//  ListSwiftUi
//
//  Created by Володя Зверев on 10/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: UUID?

    let users: [User] = [
        .init(id: 0, name: "Tim", description: "Cook", image: "mac"),
        .init(id: 1, name: "Stiven", description: "Jobs", image: "iphone"),
        .init(id: 2, name: "Vladimir", description: "Zverev", image: "desktop"),
        .init(id: 3, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),
        .init(id: 4, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),
        .init(id: 5, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),
        .init(id: 6, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),
        .init(id: 7, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),
        .init(id: 8, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),
        .init(id: 9, name: "Stive", description: "Voznyak and him like development solution computers. and more, and more, one more think", image: "iphone"),

]
    var body: some View {
        NavigationView {
            List(selection: $selection) {
                ForEach(users, id: \.id) { user in
                    UsersRow(user: user, isLike: false)
                }
            }.navigationBarTitle(Text("Groupe list"))
            .toolbar { EditButton() }
        }.buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
