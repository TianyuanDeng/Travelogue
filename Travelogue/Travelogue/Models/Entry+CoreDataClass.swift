//
//  Entry+CoreDataClass.swift
//  Travelogue
//
//  Created by Deng tianyuan on 5/10/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Entry)
public class Entry: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    
    var image: UIImage? {
        get {
            if let imageData = rawImage as Data? {
                return UIImage(data: imageData)
            }
            return nil
        }
        set {
            if let imageData = newValue {
                rawImage = imageData.pngData() as NSData?
            }
        }
    }
    
    convenience init?(title: String?, contents: String?, date: Date?, image: UIImage?, trip: Trip) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Entry.entity(), insertInto: managedContext)
        
        self.title = title
        self.content = contents
        self.date = date
        self.image = image
        self.tripBlog = trip
    }
    
    func update(title: String, contents: String?, date: Date?, image: UIImage?, trip: Trip) {
        self.title = title
        self.content = contents
        self.date = date
        self.image = image
        self.tripBlog = trip
    }
}