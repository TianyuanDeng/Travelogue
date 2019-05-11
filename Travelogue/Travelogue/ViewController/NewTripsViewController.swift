//
//  NewTripsViewController.swift
//  Travelogue
//
//  Created by Deng tianyuan on 5/10/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {
    
    @IBOutlet weak var tripTitleTextField: UITextField!
    @IBOutlet weak var tripDescriptionTextBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveTrip(_ sender: Any) {
        guard let tripTitle = tripTitleTextField.text,
            let tripDescription = tripDescriptionTextBox.text
            else {
                print("No trip title or description set!")
                return
        }
        
        let trip = Trip(title: tripTitle, contents: tripDescription)
        
        do {
            try trip?.managedObjectContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        } catch {
            print("Could not save trip")
        }
    }
}

