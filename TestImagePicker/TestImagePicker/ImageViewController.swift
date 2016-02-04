//
//  imageViewerViewController.swift
//  TestImagePicker
//
//  Created by Warif Akhand Rishi on 2/4/16.
//  Copyright © 2016 war. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var aImageView: UIImageView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = image {
            self.aImageView.image = image
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}