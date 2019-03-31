//
//  ViewController.swift
//  MemeMe
//
//  Created by عبدالرحمن محمد بن سلطان on 29/03/2019.
//  Copyright © 2019 ABnSultan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate
{
    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var albumButton: UIBarButtonItem!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var ButtomText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        topText.delegate = self
        ButtomText.delegate = self
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        //        imagePicker.allowsEditing = false
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let possibleImage = info[.originalImage] as? UIImage {
            imageView.image = possibleImage
        } else {
            return
        }
        dismiss(animated: true)
        //        if let possibleImage = info[.editedImage] as? UIImage {
        //            imageView.image = possibleImage
        //        } else if let possibleImage = info[.originalImage] as? UIImage {
        //            imageView.image = possibleImage
        //        } else {
        //            return
        //        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    private func textFieldDidBeginEditing(_ textField: UITextField) -> Bool {
        self.topText.text = ""
        return true
        
    }
    
}

