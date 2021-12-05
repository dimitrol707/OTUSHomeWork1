//
//  Tab3View.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI

struct Tab3View: View {
    @State private var isPresented: Bool = false
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text(text)
                .foregroundColor(.white)
                .frame(width: 200)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.pink))
            Button("Sheet") {
                isPresented.toggle()
            }
                .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $isPresented) {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("CustomTextView")
                        .font(Font.title)
                    CustomTextView(text: $text)
                }
                HStack {
                    Button("Clear text") {
                        text = ""
                    }
                    Button("Close sheet") {
                        isPresented = false
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}



struct Tab3View_Previews: PreviewProvider {
    static var previews: some View {
        Tab3View()
    }
}
