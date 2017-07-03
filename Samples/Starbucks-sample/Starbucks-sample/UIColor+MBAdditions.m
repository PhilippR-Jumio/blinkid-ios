//
//  UIColor+MBAdditions.m
//
//  Generated by Zeplin on 6/29/17.
//  Copyright (c) 2017 MicroBlink. All rights reserved. 
//

#import "UIColor+MBAdditions.h"

@implementation UIColor (MBAdditions)

+ (UIColor *)MB_colorInSRGBWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    CGColorSpaceRef sRGBColorSpace = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);

    CGFloat *components = (CGFloat *)malloc(sizeof(CGFloat) * 4);
    components[0] = red;
    components[1] = green;
    components[2] = blue;
    components[3] = alpha;

    CGColorRef cgColor = CGColorCreate(sRGBColorSpace, components);

    UIColor *color = [UIColor colorWithCGColor:cgColor];

    CFRelease(sRGBColorSpace);
    free(components);
    CFRelease(cgColor);

    return color;
}

+ (UIColor *)MB_colorInSRGBWithWhite:(CGFloat)white alpha:(CGFloat)alpha {
    return [self MB_colorInSRGBWithRed:white green:white blue:white alpha:alpha];
}


+ (UIColor *)MB_emeraldColor {
	return [self MB_colorInSRGBWithRed:0.0f green:168.0f / 255.0f blue:98.0f / 255.0f alpha:1.0f];
}

+ (UIColor *)MB_slateGreyColor {
	return [self MB_colorInSRGBWithRed:90.0f / 255.0f green:95.0f / 255.0f blue:103.0f / 255.0f alpha:1.0f];
}

+ (UIColor *)MB_purpleyGreyColor {
	return [self MB_colorInSRGBWithWhite:155.0f / 255.0f alpha:1.0f];
}

+ (UIColor *)MB_shadowColor {
    return [self MB_colorInSRGBWithWhite:0.0f / 255.0f alpha:0.3f];
}

@end
