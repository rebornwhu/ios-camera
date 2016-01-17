//
//  ViewController.swift
//  ios-camera
//
//  Created by Xiao Lu on 1/16/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var takePictureButton: UIButton!

    var moviePlayerController: MPMoviePlayerController?
    var image: UIImage?
    var movieURL: NSURL?
    var lastChosenMediaType: String?
    
    @IBAction func shootPictureOrVideo(sender: UIButton) {
        
    }
    
    @IBAction func selectExistingPictureOrVideo(sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            takePictureButton.hidden = true
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        updateDisplay()
    }

    func updateDisplay() {
        if let mediaType = lastChosenMediaType {
            imageView.image = image!
            imageView.hidden = false
            if moviePlayerController != nil {
                moviePlayerController!.view.hidden = true
            }
        }
        else if mediaType == kUTTypeMovie as String {
            if moviePlayerController == nil {
                moviePlayerController = MPMoviePlayerController(contentURL: movieURL)
                let movieView = moviePlayerController!.view
                movieView.frame = imageView.frame
                movieView.clipsToBounds = true
                view.addSubview(movieView)
                setMoviewPlayerLayoutConstraints()
            }
            else {
                moviePlayerController!.contentURL = movieURL
            }
            
            imageView.hidden = true
            moviePlayerController!.view.hidden = false
            moviePlayerController!.play()
        }
    }
    
}

