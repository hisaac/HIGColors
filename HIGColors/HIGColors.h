// Created by Isaac Halvorson on 8/20/18

#import <TargetConditionals.h>

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#elif TARGET_OS_OSX
#import <AppKit/AppKit.h>
#endif

//! Project version number for HIGColors.
FOUNDATION_EXPORT double HIGColors;

//! Project version string for HIGColors.
FOUNDATION_EXPORT const unsigned char HIGColorsVersionString[];
