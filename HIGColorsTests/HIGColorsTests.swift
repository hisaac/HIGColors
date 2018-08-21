// Created by Isaac Halvorson on 8/20/18

import HIGColors
import XCTest

// If on iOS, tvOS, or watchOS, import UIKit and set the `Color` typealias to UIColor
#if canImport(UIKit)
public typealias Color = UIColor

// If on macOS, import UIKit and set the `Color` typealias to NSColor
#elseif canImport(AppKit)
public typealias Color = NSColor

#endif

class HIGColorTests: XCTestCase {

	let higRed =      Color(red: 255, green: 59,  blue: 48)
	let higOrange =   Color(red: 255, green: 149, blue: 0)
	let higYellow =   Color(red: 255, green: 204, blue: 0)
	let higGreen =    Color(red: 76,  green: 217, blue: 100)
	let higTealBlue = Color(red: 90,  green: 200, blue: 250)
	let higBlue =     Color(red: 0,   green: 122, blue: 255)
	let higPurple =   Color(red: 88,  green: 86,  blue: 214)
	let higPink =     Color(red: 255, green: 45,  blue: 85)

	func testColorValues() {
		XCTAssert(HIGColors.red.rawValue == higRed)
		XCTAssert(HIGColors.orange.rawValue == higOrange)
		XCTAssert(HIGColors.yellow.rawValue == higYellow)
		XCTAssert(HIGColors.green.rawValue == higGreen)
		XCTAssert(HIGColors.tealBlue.rawValue == higTealBlue)
		XCTAssert(HIGColors.blue.rawValue == higBlue)
		XCTAssert(HIGColors.purple.rawValue == higPurple)
		XCTAssert(HIGColors.pink.rawValue == higPink)
	}

	func testColorInitialization() {
		XCTAssert(HIGColors(rawValue: higRed) == HIGColors.red)
		XCTAssert(HIGColors(rawValue: higOrange) == HIGColors.orange)
		XCTAssert(HIGColors(rawValue: higYellow) == HIGColors.yellow)
		XCTAssert(HIGColors(rawValue: higGreen) == HIGColors.green)
		XCTAssert(HIGColors(rawValue: higTealBlue) == HIGColors.tealBlue)
		XCTAssert(HIGColors(rawValue: higBlue) == HIGColors.blue)
		XCTAssert(HIGColors(rawValue: higPurple) == HIGColors.purple)
		XCTAssert(HIGColors(rawValue: higPink) == HIGColors.pink)
		XCTAssertNil(HIGColors(rawValue: Color.clear))
	}

	func testUIColorExtension() {
		XCTAssert(Color.higRed == higRed)
		XCTAssert(Color.higOrange == higOrange)
		XCTAssert(Color.higYellow == higYellow)
		XCTAssert(Color.higGreen == higGreen)
		XCTAssert(Color.higTealBlue == higTealBlue)
		XCTAssert(Color.higBlue == higBlue)
		XCTAssert(Color.higPurple == higPurple)
		XCTAssert(Color.higPink == higPink)
	}

	func testCGColorExtension() {
		XCTAssert(CGColor.higRed == higRed.cgColor)
		XCTAssert(CGColor.higOrange == higOrange.cgColor)
		XCTAssert(CGColor.higYellow == higYellow.cgColor)
		XCTAssert(CGColor.higGreen == higGreen.cgColor)
		XCTAssert(CGColor.higTealBlue == higTealBlue.cgColor)
		XCTAssert(CGColor.higBlue == higBlue.cgColor)
		XCTAssert(CGColor.higPurple == higPurple.cgColor)
		XCTAssert(CGColor.higPink == higPink.cgColor)
	}

}
