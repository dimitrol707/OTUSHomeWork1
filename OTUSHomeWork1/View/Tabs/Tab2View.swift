//
//  Tab2View.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

struct Tab2View: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(homeViewModel.itemList) {
                    item in
                    NavigationLink(item.name, tag: item.id, selection: $homeViewModel.selectIdItem) {
                        AboutView(item: item)
                    }
                }
            }
            .navigationTitle("ItemList")
            .navigationBarTitleDisplayMode(.large)
            Text("Select Item")
        }
    }
}

struct AboutView: View {
    var item: Item
    
    var body: some View {
        Text(item.name)
            .navigationTitle(item.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct Tab2View_Previews: PreviewProvider {
    
    static var previews: some View {
        Tab2View()
            .environmentObject(HomeViewModel())
    }
}
