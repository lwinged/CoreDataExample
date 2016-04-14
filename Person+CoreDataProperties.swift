//
//  Person+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by flav on 14/04/2016.
//  Copyright © 2016 lwinged. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Person {

    @NSManaged var firstname: String?
    @NSManaged var name: String?

}
