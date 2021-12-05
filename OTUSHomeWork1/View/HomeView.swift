//
//  HomeView.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

// MARK: - Tab
enum Tab: Int {
    case tab1 = 0
    case tab2
    case tab3
}

struct HomeView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        TabView(selection: $homeViewModel.selectTab) {
            Tab1View()
                .tabItem {
                    Label("Tab1", systemImage: "person.circle")
                }
                .tag(Tab.tab1)
            Tab2View()
                .tabItem {
                    Label("Tab2", systemImage: "person.circle")
                }
                .tag(Tab.tab2)
            Tab3View()
                .tabItem {
                    Label("Tab3", systemImage: "person.circle")
                }
                .tag(Tab.tab3)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
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
