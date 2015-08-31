//
//  SwappetViewController.swift
//  design 01
//
//  Created by Leandro Hernandez on 9/8/15.
//  Copyright (c) 2015 antrax. All rights reserved.
//

import UIKit


class SwappetViewController: UITableViewController {

    var listOfItems = NSArray()
    
    
    // MARK: - LoadView
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Swappet"
        
        // Custom NavigationBar
        self.navigationController?.navigationBar.barTintColor = UIColorFromRGB(0x009bf0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationController?.navigationBar.shadowImage = ImageWithColor(UIColorFromRGB(0x008eec))
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        // options in navigations bar
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Search, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Compose, target: self, action: nil)
    
        // custom tableView
        self.tableView.backgroundColor = UIColorFromRGB(0xf0f2f5)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 5))
        self.tableView.tableFooterView = UIView(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 5))
        
        // mock
        self.loadMockedItems()
    }
    
    
    // MARK: - Load Items
    func loadMockedItems() {
        self.listOfItems = NSArray(array: SampleData().loadSampleListOfItems())
        self.tableView.reloadData()
    }
    
    
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listOfItems.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = ItemTableViewCell()
        
        // item data
        var item = self.listOfItems.objectAtIndex(indexPath.row) as! SampleItemObject
        cell.titleLabel.text = item.name
        cell.imageItem.image = UIImage(named: item.image)
        cell.timeLabel.text = item.time
        cell.amountLabel.text = item.price
        
        cell.performCategory(item.category)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 96
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


}
