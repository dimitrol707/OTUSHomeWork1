//
//  HomeViewModel.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var itemList: [Item] = [
        Item(name: "Item 1"),
        Item(name: "Item 2")]
    @Published var selectTab: Tab = .tab1
    @Published var selectIdItem: UUID?
}

