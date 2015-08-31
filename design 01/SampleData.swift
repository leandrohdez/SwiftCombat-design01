//
//  SampleData.swift
//  design 01
//
//  Created by IT-ELEVEN on 31/8/15.
//  Copyright (c) 2015 antrax. All rights reserved.
//

import UIKit

class SampleItemObject: NSObject {
    var name        = ""
    var price       = ""
    var time        = ""
    var image       = ""
    var category: CategoryType!
}

class SampleData: NSObject {
    
    func loadSampleListOfItems() -> NSArray {
        var sampleList = NSMutableArray()
        
        var item       = SampleItemObject()    // declaration
        
        item           = SampleItemObject()
        item.name      = "Used Living Furniture"
        item.price     = "$350"
        item.time      = "2h"
        item.image     = "sample-item-01"
        item.category  = CategoryType.Home
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Smashing Book #4"
        item.price     = "$25"
        item.time      = "5h"
        item.image     = "sample-item-02"
        item.category  = CategoryType.School
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Macbook Air 13''"
        item.price     = "$1,500"
        item.time      = "5h"
        item.image     = "sample-item-03"
        item.category  = CategoryType.Electronic
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Awesome Blue Blazer"
        item.price     = "$725"
        item.time      = "2d"
        item.image     = "sample-item-04"
        item.category  = CategoryType.Clothes
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Cool Living Couch"
        item.price     = "$350"
        item.time      = "2d"
        item.image     = "default"
        item.category  = CategoryType.Home
        sampleList.addObject(item)

        item           = SampleItemObject()
        item.name      = "Used Living Furniture"
        item.price     = "$350"
        item.time      = "2h"
        item.image     = "sample-item-01"
        item.category  = CategoryType.Home
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Smashing Book #4"
        item.price     = "$25"
        item.time      = "5h"
        item.image     = "sample-item-02"
        item.category  = CategoryType.School
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Macbook Air 13''"
        item.price     = "$1,500"
        item.time      = "5h"
        item.image     = "sample-item-03"
        item.category  = CategoryType.Electronic
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Awesome Blue Blazer"
        item.price     = "$725"
        item.time      = "2d"
        item.image     = "sample-item-04"
        item.category  = CategoryType.Clothes
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Cool Living Couch"
        item.price     = "$350"
        item.time      = "2d"
        item.image     = "default"
        item.category  = CategoryType.Home
        sampleList.addObject(item)

        item           = SampleItemObject()
        item.name      = "Used Living Furniture"
        item.price     = "$350"
        item.time      = "2h"
        item.image     = "sample-item-01"
        item.category  = CategoryType.Home
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Smashing Book #4"
        item.price     = "$25"
        item.time      = "5h"
        item.image     = "sample-item-02"
        item.category  = CategoryType.School
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Macbook Air 13''"
        item.price     = "$1,500"
        item.time      = "5h"
        item.image     = "sample-item-03"
        item.category  = CategoryType.Electronic
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Awesome Blue Blazer"
        item.price     = "$725"
        item.time      = "2d"
        item.image     = "sample-item-04"
        item.category  = CategoryType.Clothes
        sampleList.addObject(item)
        
        item           = SampleItemObject()
        item.name      = "Cool Living Couch"
        item.price     = "$350"
        item.time      = "2d"
        item.image     = "default"
        item.category  = CategoryType.Home
        sampleList.addObject(item)

        return NSArray(array: sampleList)
    }
    
}
