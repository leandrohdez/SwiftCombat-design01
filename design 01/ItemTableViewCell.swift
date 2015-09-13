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
    case School
}

class PaddingLabel: UILabel {
    
    override func drawTextInRect(rect: CGRect) {
        let newRect = CGRectOffset(rect, 20, 0) // move text 20 points to the right
        super.drawTextInRect(newRect)
    }
}

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet var labelTitle: UILabel?
    
    var frameView       = UIView()
    var imageItem       = UIImageView()
    var titleLabel      = UILabel()
    var amountLabel     = UILabel()
    var timeLabel       = UILabel()
    
    private var categoryView    = UIImageView()
    private var categoryIcon    = UIImageView()
    
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
        self.imageItem.layer.cornerRadius = 3
        self.imageItem.clipsToBounds = true
        self.frameView.addSubview(self.imageItem)
        
        // title text
        self.titleLabel = UILabel(frame: CGRectMake(CGRectGetMaxX(self.imageItem.frame)+6, 12, CGRectGetWidth(self.frameView.frame)-CGRectGetMaxX(self.imageItem.frame)-50, 30))
        self.titleLabel.textColor = UIColor.darkGrayColor()
        self.titleLabel.font = UIFont(name: "HelveticaNeue-Light", size: 20)
        self.frameView.addSubview(self.titleLabel)
        
        // price 
        self.amountLabel = UILabel(frame: CGRectMake(CGRectGetMaxX(self.imageItem.frame)+6, CGRectGetMaxY(self.titleLabel.frame)+10, 80, 24))
        self.amountLabel.backgroundColor = UIColorFromRGB(0xb3becd)
        self.amountLabel.layer.cornerRadius = 2
        self.amountLabel.clipsToBounds = true
        self.amountLabel.textAlignment = NSTextAlignment.Center
        self.amountLabel.textColor = UIColor.whiteColor()
        self.amountLabel.font = UIFont.systemFontOfSize(15)
        // para que al seleccionar se vea el contorno
        self.amountLabel.layer.borderColor = UIColorFromRGB(0xb3becd).CGColor
        self.amountLabel.layer.borderWidth = 1
        self.frameView.addSubview(self.amountLabel)
        
        // time
        self.timeLabel = PaddingLabel(frame: CGRectMake(CGRectGetMaxX(self.amountLabel.frame)+6, CGRectGetMaxY(self.titleLabel.frame)+10, 50, 24))
        self.timeLabel.textColor = UIColorFromRGB(0xb3becd)
        self.timeLabel.font = UIFont(name: "HelveticaNeue-Light", size: 15)
        self.timeLabel.textAlignment = NSTextAlignment.Left
        self.frameView.addSubview(self.timeLabel)
        
        var clockIcon = UIImageView(frame: CGRectMake(0, 0, 13, 13))
        clockIcon.center = CGPointMake(10, CGRectGetHeight(self.timeLabel.frame)/2)
        clockIcon.image = UIImage(named: "clock")
        self.timeLabel.addSubview(clockIcon)
        
        
        // category
        // i use imageview because...
        self.categoryView = UIImageView(frame: CGRectMake(CGRectGetMaxX(self.titleLabel.frame)+6, 0, 30, 42))
        self.frameView.addSubview(self.categoryView)
        
        self.categoryIcon = UIImageView(frame: CGRectMake(CGRectGetMaxX(self.titleLabel.frame)+6, 3, 30, 39))
        self.categoryIcon.contentMode = UIViewContentMode.Center
        self.frameView.addSubview(self.categoryIcon)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
            self.categoryIcon.image = UIImage(named: "chair")
        }
        else if category == CategoryType.Electronic {
            border.borderColor = UIColorFromRGB(0x9259bb).CGColor
            self.categoryView.image = ImageWithColor(UIColorFromRGB(0xad7dcf))
            self.categoryIcon.image = UIImage(named: "display")
        }
        else if category == CategoryType.Clothes {
            border.borderColor = UIColorFromRGB(0xdd2f34).CGColor
            self.categoryView.image = ImageWithColor(UIColorFromRGB(0xff484d))
            self.categoryIcon.image = UIImage(named: "shirt")
        }
        else if category == CategoryType.School {
            border.borderColor = UIColorFromRGB(0x4bc274).CGColor
            self.categoryView.image = ImageWithColor(UIColorFromRGB(0x57dd86))
            self.categoryIcon.image = UIImage(named: "book")
        }
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    
    
}
