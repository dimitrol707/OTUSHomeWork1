//
//  Tab1View.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

struct Tab1View: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    var body: some View {
        VStack(spacing: 10) {
            ForEach(homeViewModel.itemList) {
                item in
                Button(item.name) {
                    homeViewModel.selectTab = .tab2
                    homeViewModel.selectIdItem = item.id
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12", "iPad Pro (11-inch) (3rd generation)"], id: \.self) {
            item in
            HomeView()
                .environmentObject(HomeViewModel())
                .previewDevice(PreviewDevice(rawValue: item))
            HomeView()
                .environmentObject(HomeViewModel())
                .previewDevice(PreviewDevice(rawValue: item))
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
