//
//  InterfaceController.swift
//  SwiftWatchCounter WatchKit Extension
//
//  Created by Jerry Zhang on 2016-01-21.
//  Copyright © 2016 Jerry Zhang. All rights reserved.
//

import WatchKit
import Foundation
import UIKit



class InterfaceController: WKInterfaceController {

    @IBOutlet var Result: WKInterfaceLabel!
	// Lable on the user interface.
    
	var counter = 0
	// Variable counter stored as Int.
    
    override func awake(withContext context: Any?) {
       
	    super.awake(withContext: context)
        // Configure interface objects here.
   
    }

    @IBAction func Increment() {
        
		// The counter +1 after clicking the bottom, and then the lable got updated.
		
        counter += 1
        Result.setText(String(counter))
        NSLog("Incremented")
        
    }
    
    
    @IBAction func Reset() {
     
		// Counter set to 0 and lable updated.
		
		counter = 0
        Result.setText(String(counter))
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
