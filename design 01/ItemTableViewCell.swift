//
//  ItemTableViewCell.swift
//  design 01
//
//  Created by Leandro Hernandez on 9/8/15.
//  Copyright (c) 2015 antrax. All rights reserved.
//

import UIKit

enum CategoryType {
    case Home
    case Electronic
    case Clothes
}



class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet var labelTitle: UILabel?
    
    var frameView       = UIView()
    var imageItem       = UIImageView()
    var titleLabel      = UILabel()
    var amountLabel     = UILabel()
    var timeLabel       = UILabel()
    var categoryView    = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: UITableViewCellStyle.Value1, reuseIdentifier: reuseIdentifier)
        
        // background cell color
        self.backgroundColor = UIColorFromRGB(0xf0f2f5)
        
        // creating background area
        self.frameView = UIView(frame: CGRectMake(6, 6, CGRectGetWidth(self.frame)-12, 86))
        self.frameView.backgroundColor = UIColor.whiteColor()
        self.frameView.layer.cornerRadius = 3
        self.frameView.clipsToBounds = true
        self.addSubview(self.frameView)
        
        // image cell
        self.imageItem = UIImageView(frame: CGRectMake(10, 10, CGRectGetHeight(frameView.frame)-20, CGRectGetHeight(frameView.frame)-20))
        self.imageItem.image = ImageWithColor(UIColor.redColor())
        self.imageItem.layer.cornerRadius = 3
        self.imageItem.clipsToBounds = true
        self.frameView.addSubview(self.imageItem)
        
        // title text
        self.titleLabel = UILabel(frame: CGRectMake(CGRectGetMaxX(self.imageItem.frame)+6, 12, CGRectGetWidth(self.frameView.frame)-CGRectGetMaxX(self.imageItem.frame)-50, 30))
        self.titleLabel.backgroundColor = UIColor.redColor()
        self.frameView.addSubview(self.titleLabel)
        
        // price 
        self.amountLabel = UILabel(frame: CGRectMake(CGRectGetMaxX(self.imageItem.frame)+6, CGRectGetMaxY(self.titleLabel.frame)+10, 80, 24))
        self.amountLabel.backgroundColor = UIColorFromRGB(0xb3becd)
        self.amountLabel.layer.cornerRadius = 2
        self.amountLabel.clipsToBounds = true
        self.amountLabel.textAlignment = NSTextAlignment.Center
        self.frameView.addSubview(self.amountLabel)
        
        // time
        self.timeLabel = UILabel(frame: CGRectMake(CGRectGetMaxX(self.amountLabel.frame)+6, CGRectGetMaxY(self.titleLabel.frame)+10, 50, 24))
        self.timeLabel.backgroundColor = UIColorFromRGB(0xb3becd)
        self.timeLabel.textAlignment = NSTextAlignment.Center
        self.frameView.addSubview(self.timeLabel)
        
        // category
        // i use imageview
        self.categoryView = UIImageView(frame: CGRectMake(CGRectGetMaxX(self.titleLabel.frame)+6, 0, 30, 42))
        self.categoryView.image = ImageWithColor(UIColor.redColor())
        self.frameView.addSubview(self.categoryView)
    }
    
    func performCategory(category: CategoryType) {
        // border top
        let border = CALayer()
        border.frame = CGRect(x: 0, y: 0, width: CGRectGetWidth(self.categoryView.frame), height: 3)
        border.borderWidth = 3
        self.categoryView.layer.addSublayer(border)
        self.categoryView.layer.masksToBounds = true
        
        // color style
        if category == CategoryType.Home {
            border.borderColor = UIColorFromRGB(0x16b6c5).CGColor
            self.categoryView.image = ImageWithColor(UIColorFromRGB(0x24c6d5))
        }
        
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
