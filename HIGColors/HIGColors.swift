// Created by Isaac Halvorson on 8/20/18

// If on iOS, tvOS, or watchOS, import UIKit and set the `Color` typealias to UIColor
#if canImport(UIKit)
import UIKit
public typealias Color = UIColor

// If on macOS, import UIKit and set the `Color` typealias to NSColor
#elseif canImport(AppKit)
import AppKit
public typealias Color = NSColor

#endif

/// 🎨 Colors from Apple's Human Interface Guidelines
/// reference: https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/
///
public enum HIGColors {
	case red
	case orange
	case yellow
	case green
	case tealBlue
	case blue
	case purple
	case pink
}

/// Extension that allows for using `UIColor` as the enum's rawValue type
extension HIGColors: RawRepresentable {
	public typealias RawValue = Color

	public init?(rawValue: Color) {
		switch rawValue {
		case Color(red: 255, green: 59,  blue: 48):  self = .red
		case Color(red: 255, green: 149, blue: 0):   self = .orange
		case Color(red: 255, green: 204, blue: 0):   self = .yellow
		case Color(red: 76,  green: 217, blue: 100): self = .green
		case Color(red: 90,  green: 200, blue: 250): self = .tealBlue
		case Color(red: 0,   green: 122, blue: 255): self = .blue
		case Color(red: 88,  green: 86,  blue: 214): self = .purple
		case Color(red: 255, green: 45,  blue: 85):  self = .pink
		default: return nil
		}
	}

	public var rawValue: RawValue {
		switch self {
		case .red:      return Color(red: 255, green: 59,  blue: 48)
		case .orange:   return Color(red: 255, green: 149, blue: 0)
		case .yellow:   return Color(red: 255, green: 204, blue: 0)
		case .green:    return Color(red: 76,  green: 217, blue: 100)
		case .tealBlue: return Color(red: 90,  green: 200, blue: 250)
		case .blue:     return Color(red: 0,   green: 122, blue: 255)
		case .purple:   return Color(red: 88,  green: 86,  blue: 214)
		case .pink:     return Color(red: 255, green: 45,  blue: 85)
		}
	}
}

// MARK: - Convenience extensions

public extension Color {

	/// Convenience init that defaults alpha to 1 if not provided
	public convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
		self.init(red: red, green: green, blue: blue, alpha: 1)
	}

	public static var higRed:      Color { return HIGColors.red.rawValue }
	public static var higOrange:   Color { return HIGColors.orange.rawValue }
	public static var higYellow:   Color { return HIGColors.yellow.rawValue }
	public static var higGreen:    Color { return HIGColors.green.rawValue }
	public static var higTealBlue: Color { return HIGColors.tealBlue.rawValue }
	public static var higBlue:     Color { return HIGColors.blue.rawValue }
	public static var higPurple:   Color { return HIGColors.purple.rawValue }
	public static var higPink:     Color { return HIGColors.pink.rawValue }
}

/// CGColor values for easy use
public extension CGColor {
	public static var higRed:      CGColor { return HIGColors.red.rawValue.cgColor }
	public static var higOrange:   CGColor { return HIGColors.orange.rawValue.cgColor }
	public static var higYellow:   CGColor { return HIGColors.yellow.rawValue.cgColor }
	public static var higGreen:    CGColor { return HIGColors.green.rawValue.cgColor }
	public static var higTealBlue: CGColor { return HIGColors.tealBlue.rawValue.cgColor }
	public static var higBlue:     CGColor { return HIGColors.blue.rawValue.cgColor }
	public static var higPurple:   CGColor { return HIGColors.purple.rawValue.cgColor }
	public static var higPink:     CGColor { return HIGColors.pink.rawValue.cgColor }
}
