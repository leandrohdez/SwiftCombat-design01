//
//  GlobalFunctions.swift
//  design 01
//
//  Created by Leandro Hernandez on 9/8/15.
//  Copyright (c) 2015 antrax. All rights reserved.
//


import UIKit
import EventKit
import Foundation


func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}


func ImageWithColor(color: UIColor) -> UIImage {
    let rect = CGRectMake(0, 0, 1, 1)
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(1, 1), false, 0)
    color.setFill()
    UIRectFill(rect)
    let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
}


func ImageWithColor(color: UIColor, size: CGSize) -> UIImage {
    let rect = CGRectMake(0, 0, size.width, size.height)
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(size.width, size.height), false, 0)
    color.setFill()
    UIRectFill(rect)
    let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
}