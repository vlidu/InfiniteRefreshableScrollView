//
//  OnListRefreshModifier.swift
//
//  Created by Alexandre VLADOVICH RELJA on 22/03/2022.
//

import SwiftUI
import Introspect

public struct OnListRefreshModifier: ViewModifier {
    let onValueChanged: UIScrollView.ValueChangedAction
    
    public func body(content: Content) -> some View {
        content
            .introspectTableView { tableView in
                tableView.onRefresh(onValueChanged)
            }
    }
}
