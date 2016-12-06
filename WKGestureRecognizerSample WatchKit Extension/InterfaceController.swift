//
//  InterfaceController.swift
//  WKGestureRecognizerSample WatchKit Extension
//
//  Created by katsuya.kato on 2016/12/06.
//  Copyright © 2016年 CrossBridge. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var label: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func handleTapGesture(gestureRecognizer : WKTapGestureRecognizer) {
        label.setText("Tap (\(gestureRecognizer.locationInObject().x),\(gestureRecognizer.locationInObject().y))")
    }

    @IBAction func handleLongPressGesture(gestureRecognizer : WKLongPressGestureRecognizer) {
        label.setText("Long Press (\(gestureRecognizer.locationInObject().x),\(gestureRecognizer.locationInObject().y))")
    }

    @IBAction func handleSwipeGesture(gestureRecognizer : WKSwipeGestureRecognizer) {
        switch gestureRecognizer.direction {
        case WKSwipeGestureRecognizerDirection.right:
            label.setText("Swipe Right")
        case WKSwipeGestureRecognizerDirection.left:
            label.setText("Swipe Left")
        case WKSwipeGestureRecognizerDirection.down:
            label.setText("Swipe Down")
        case WKSwipeGestureRecognizerDirection.up:
            label.setText("Swipe Up")
        default:
            break
        }
    }

    @IBAction func handlePanGesture(gestureRecognizer : WKPanGestureRecognizer) {
        label.setText("Pan (\(gestureRecognizer.translationInObject().x),\(gestureRecognizer.translationInObject().y))")
    }
}
