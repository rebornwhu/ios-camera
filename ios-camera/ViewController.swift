//
//  ViewController.swift
//  ios-camera
//
//  Created by Xiao Lu on 1/16/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var takePictureButton: UIButton!

    @IBAction func shootPictureOrVideo(sender: UIButton) {
        
    }
    
    @IBAction func selectExistingPictureOrVideo(sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

