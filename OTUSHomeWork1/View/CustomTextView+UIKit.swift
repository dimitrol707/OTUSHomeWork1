//
//  CustomTextView+UIKit.swift
//  OTUSHomeWork1
//
//  Created by Дмитрий Мальцев on 05.12.2021.
//

import SwiftUI
import UIKit

struct CustomTextView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeCoordinator() -> CustomTextView.Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView(frame: .zero)
        // delegate
        textView.delegate = context.coordinator
        // view
        textView.layer.borderWidth = 2.0
        textView.layer.borderColor = UIColor.systemGray2.cgColor
        textView.layer.cornerRadius = 15.0
        textView.font = UIFont.systemFont(ofSize: 20)
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
    
    // MARK: - Coordinator
    class Coordinator: NSObject, UITextViewDelegate {
        var text: Binding<String>
        
        init(text: Binding<String>) {
            self.text = text
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
}
