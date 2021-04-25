//
//  ViewController.swift
//  UploadPhoto
//
//  Created by Mahvish Syed on 25/04/21.
//  Copyright © 2021 Mahvish Syed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageViewController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewController.delegate = self
    }


    @IBAction func selectImage(_ sender: UIButton) {
        imageViewController.sourceType = .photoLibrary
        imageViewController.allowsEditing = true
        present(imageViewController, animated: true, completion: nil)
    }
}

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            imageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
}
