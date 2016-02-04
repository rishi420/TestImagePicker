//
//  ViewController.swift
//  TestImagePicker
//
//  Created by Warif Akhand Rishi on 2/4/16.
//  Copyright © 2016 war. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Images(sender: AnyObject) {
        
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        image.allowsEditing = false
        
        
        self.presentViewController(image, animated: true, completion: nil)
    }
    
    func presentImageViewerWithImage(image: UIImage) {
        let svc = self.storyboard!.instantiateViewControllerWithIdentifier("imageViewer") as! ImageViewController
        svc.image = image
        self.presentViewController(svc, animated: true, completion: nil)
    }
}

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image:UIImage, editingInfo: [String : AnyObject]?) {
        
        self.dismissViewControllerAnimated(false, completion: {
            self.presentImageViewerWithImage(image)
        })
    }
}

