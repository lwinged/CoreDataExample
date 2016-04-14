//
//  ViewController.swift
//  CoreDataExample
//
//  Created by flav on 14/04/2016.
//  Copyright © 2016 lwinged. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var firstnameTextField: UITextField!
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func savePerson(sender: AnyObject) {
        
        let entityDescription = NSEntityDescription.entityForName("Person", inManagedObjectContext:self.managedObjectContext)
        
        let person = Person(entity: entityDescription!, insertIntoManagedObjectContext: self.managedObjectContext)
        
        person.name = nameTextField.text
        person.firstname = firstnameTextField.text
        
        do {
            try self.managedObjectContext.save()
            print("success save")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
    }

}

