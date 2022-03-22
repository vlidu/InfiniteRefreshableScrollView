//
//  View+Extensions.swift
//
//  Created by Alexandre VLADOVICH RELJA on 22/03/2022.
//

import SwiftUI

public extension View {
    func onRefresh(onValueChanged: @escaping UIScrollView.ValueChangedAction) -> some View {
        self.modifier(OnListRefreshModifier(onValueChanged: onValueChanged))
    }
    
    func onRefresh(action: @escaping @Sendable () async -> Void) -> some View {
        self.modifier(RefreshableModifier(action: action))
    }
}
