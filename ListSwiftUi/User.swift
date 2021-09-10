//
//  User.swift
//  ListSwiftUi
//
//  Created by Володя Зверев on 10/9/21.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    
    let name, description, image: String
    
    var isLike: Bool? = false
}
