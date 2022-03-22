# RefreshableScrollView

This package aims to improve the ScrollView on SwiftUI for iOS 14. `.refreshable` modifier comes
from ios 15, so this package replaces it until you update your project minimal iOS version.

This package is largely inspired by [this article](http://blog.eppz.eu/swiftui-pull-to-refresh/).

## Installation

### Swift Package Manager

```swift
https://github.com/vlidu/RefreshableScrollView
```

## Usage

### Refreshable
You need to add the `.onRefresh` modifier to your `ScrollView` in order to use the Pull To Refresh
feature.

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
