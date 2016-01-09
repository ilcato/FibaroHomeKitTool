//
//  FibaroSetupViewController.swift
//  FibaroHomeKitTool
//
//  Created by Andrea Catozzi on 18/10/15.
//  Copyright © 2015 Apple, Inc. All rights reserved.
//

import UIKit

class FibaroSetupViewController: UITableViewController {
    
    // MARK: Properties
    @IBOutlet weak var fibaroHost: UITextField!
    @IBOutlet weak var fibaroUserName: UITextField!
    @IBOutlet weak var fibaroPassword: UITextField!
    @IBOutlet weak var grouping: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if let _ = defaults.objectForKey("host") as? String {
            self.fibaroHost.text = (defaults.objectForKey("host") as! String)
        }
        
        if let _ = defaults.objectForKey("username") as? String {
            self.fibaroUserName.text = (defaults.objectForKey("username") as! String)
        }
        
        if let _ = defaults.objectForKey("password") as? String {
            self.fibaroPassword.text = (defaults.objectForKey("password") as! String)
        }
        
        if let _ = defaults.objectForKey("grouping") as? String {
            self.grouping.text = (defaults.objectForKey("grouping") as! String)
        }

        self.updateHomeStoreFibaroCredentials()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.fibaroHost.text, forKey: "host")
        defaults.setObject(self.fibaroUserName.text, forKey: "username")
        defaults.setObject(self.fibaroPassword.text, forKey: "password")
        defaults.setObject(self.grouping.text, forKey: "grouping")
        
        defaults.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateHomeStoreFibaroCredentials() {
        HomeStore.sharedStore.fibaroHost = fibaroHost.text
        HomeStore.sharedStore.fibaroUserName = fibaroUserName.text
        HomeStore.sharedStore.fibaroPassword = fibaroPassword.text
        HomeStore.sharedStore.fibaroGrouping = grouping.text
    
    }
    // MARK: - Table view data source

/*    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
            case 0:
                return 1
            case 1:
                return 1
            case 2:
                return 1
            default:
                return 0
        }
    }
*/
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
