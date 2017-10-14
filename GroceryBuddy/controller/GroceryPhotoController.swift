//
//  FirstViewController.swift
//  GroceryBuddy
//
//  Created by Kevin Liao on 10/14/17.
//  Copyright © 2017 Kev's Concepts. All rights reserved.
//

import UIKit

class GroceryPhotoController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scanItemAction(_ sender: Any) {
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        GroceryPhoto.sharedInstance.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

