//
//  ContentView.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var homeViewModel: HomeViewModel = .init()
    var body: some View {
        HomeView()
            .environmentObject(homeViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
