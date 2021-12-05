//
//  Item.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

struct Item: Hashable, Identifiable {
    var id: UUID = UUID()
    var name: String
}
