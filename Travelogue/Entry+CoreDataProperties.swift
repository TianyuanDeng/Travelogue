//
//  Entry+CoreDataProperties.swift
//  Travelogue
//
//  Created by Deng tianyuan on 5/10/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var contents: String?
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var rawImage: NSData?
    @NSManaged public var title: String?
    @NSManaged public var trip: Trip?

}
