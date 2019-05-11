//
//  EntryViewController.swift
//  Travelogue
//
//  Created by Deng tianyuan on 5/10/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var entryImageView: UIImageView!
    @IBOutlet weak var entryTitleLabel: UILabel!
    @IBOutlet weak var entryDateLabel: UILabel!
    @IBOutlet weak var entryDescriptionLabel: UILabel!
    
    var trip: Trip?
    var entry: Entry?
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMM d, yyyy"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let entry = entry {
            print("Here in entry")
            entryImageView.image = entry.image
            entryTitleLabel.text = entry.title
            entryDescriptionLabel.text = entry.contents
            
            self.title = entry.title
            
            if let date = entry.date {
                entryDateLabel.text = dateFormatter.string(from: date)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? AddEntryViewController else {
            return
        }
        
        destination.trip = trip
        destination.entry = entry
    }
}

