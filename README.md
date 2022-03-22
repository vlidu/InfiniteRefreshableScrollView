# InfiniteRefreshableScrollView

This package aims to improve the ScrollView on SwiftUI for iOS 14. `.refreshable` modifier comes
from ios 15, so this package replaces it until you update your project minimal iOS version.

This package is largely inspired by [this article](http://blog.eppz.eu/swiftui-pull-to-refresh/).

## Installation

### Swift Package Manager

```swift
https://github.com/vlidu/InfiniteRefreshableScrollView
```

## Usage

```swift
import SwiftUI
import InfiniteRefreshableScrollView

struct ContentView: View {

    var body: some View {
        ScrollView {
            [...]
        }
        .onRefresh {
            await viewModel.refreshContent()
        }
    }
}
```
You can use `ScrollView` as well as `List`.
