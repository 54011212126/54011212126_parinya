//
//  ViewController.swift
//  coreDataExample
//
//  Created by iStudents on 3/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    var items = [NSManagedObject]()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
   
    @IBOutlet weak var tableView: UITableView!

    @IBAction func addItem(sender: AnyObject) {
        
                var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle: .Alert)
        
        
                //2 กด save ก็จะเอาคำใน texfield มาใส่ใน Array items
                let saveAction = UIAlertAction(title: "Save", style: .Default) {(action: UIAlertAction! ) -> Void in
                    let textField = alert.textFields![0] as UITextField
                    // self.items.append(textField.text)
                    self.saveName(textField.text)
                    self.tableView.reloadData()
                }
                //3 กด cancel ก็จะไม่เกิดอะไรขึ้น
                let cancelAction = UIAlertAction(title: "Cacel", style: .Default) {(action: UIAlertAction! ) -> Void in
                }
        
                alert.addTextFieldWithConfigurationHandler{
                    (textField: UITextField!) -> Void in
                }
                //4 เพิ่ม  Action กับปุ่ม
                alert.addAction(saveAction)
                alert.addAction(cancelAction)
                
                presentViewController(alert, animated: true, completion:nil )
    }
    

    func saveName(name: String){
    
        //1 สร้าง managedObjectContext เพื่อ referrence มาที่ app delegate
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        
        
        let managedContext = appDelegate.managedObjectContext!
        
        
        
        //2 สร้าง entity เพื่อ link กับโค้ดตอน runtime
        
        
        
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        
        
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        println(name)
        
        
        
        //3 สร้าง name attribute โดนใช้ key-value coding ตามที่เราออกแบบไว้ใน data model
        
        item.setValue(name, forKey: "name")
        
        
        
        //4 commit การเปลี่ยนแปลงใน item มีnsEroror เป็น pointer เมื่อ error จะเช็ค
        
        var error: NSError?
        
        if !managedContext.save(&error){
            
            println("Could not save \(error), \(error?.userInfo)")
            
        }
        
        //5
        
        items.append(item)
        

    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item.valueForKey("name") as String?
        
        return cell
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
        //1
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        
        
        let managedContext = appDelegate.managedObjectContext!
        
        
        
        //2
        
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        
        
        //3
        
        var error: NSError?
        
        
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        
        
        if let results = fetchedResults {
            
            items = results
            
        }else {
            
            println("Could not save \(error), \(error?.userInfo)")
            
        }
        
    }
}





