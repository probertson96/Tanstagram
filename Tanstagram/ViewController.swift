//
//  ViewController.swift
//  Tanstagram
//
//  Created by Patrick Robertson on 7/12/16.
//  Copyright © 2016 Patrick Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet var images: [UIImageView]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createGestures()
        

    }
    
    func pinchGesture(imageView: UIImageView) -> UIPinchGestureRecognizer {
        return UIPinchGestureRecognizer(target: self, action: #selector(ViewController.handlePinch))
    }
    
    func handlePinch(sender: UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
    }
    
    func createGestures() {
        for shape in images {
            let pinch = pinchGesture(imageView: shape)
            shape.addGestureRecognizer(pinch)
        }
    }
}

