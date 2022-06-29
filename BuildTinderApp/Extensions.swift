//
//  Extensions.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 24.06.2022.
//

import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

extension Color {
    static let textPrimary = Color.gray.opacity(0.9)
    static let textSecondary = Color.gray.opacity(0.6)
    static let textTitle = Color.black.opacity(0.8)
    static let defaultBackgroud = Color(.systemGray6).opacity(0.35)
    static let textfieldBG = Color(.systemGray6)
}

extension View {
    func endEditing(_ force: Bool) {
        UIApplication.shared.windows.forEach { $0.endEditing(force)}
    }
}
