//
//  Book+CoreDataProperties.swift
//  FileSavingCoreDataExercise
//
//  Created by 張智涵 on 2016/6/20.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Book {

    @NSManaged var isbn: String?
    @NSManaged var title: String?
    @NSManaged var author: String?
    @NSManaged var price: NSNumber?

}
