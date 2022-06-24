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
