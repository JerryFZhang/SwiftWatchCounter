//
//  InterfaceController.swift
//  SwiftWatchCounter WatchKit Extension
//
//  Created by Jerry Zhang on 2016-01-21.
//  Copyright © 2016 Jerry Zhang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var Result: WKInterfaceLabel!
    var counter = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func Increment() {
        
        counter++
        Result.setText(String(counter))
        NSLog("Incremented")
        
    }
    @IBAction func Reset() {
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
