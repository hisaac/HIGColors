# HIGColors

A simple micro-library that gives easy access to Apple's [iOS Human Interface Guidelines (HIG) color definitions](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/). Compatible with iOS, watchOS, tvOS, and macOS.

For detailed information on changes, see the [changelog](./changelog.md).

## Installation

### Carthage

To install HIGColors using [Carthage](https://github.com/Carthage/Carthage), add the following to your Cartfile:

```plain
github "hisaac/HIGColors"
```

### Cocoapods

To install HIGColors using [Cocoapods](https://cocoapods.org), add the following to your Podfile:

```ruby
pod 'HIGColors'
```

## Usage

To use this library in your project, first import the library like so:

### Swift

```swift
import HIGColors
```

### Objective-C

```objc
#import "HIGColors"
```

Then, you can reference the colors a few different ways. The library includes definitions for `UIColor`, `NSColor`, and `CGColor`, as well as a color set in an asset catalog so that the colors can be used in Interface Builder.

```swift
let higRed = HIGColors.red
```
