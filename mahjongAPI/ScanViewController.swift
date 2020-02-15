//
//  ScanViewController.swift
//  mahjongAPI
//
//  Created by 柏木航 on 2020/02/05.
//  Copyright © 2020 柏木航. All rights reserved.
//

import UIKit
import AVFoundation

class ScanViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func startCamera(_ sender: Any) {
        
        let sourceType:UIImagePickerController.SourceType = UIImagePickerController.SourceType.camera
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera){
            let picker = UIImagePickerController()
            picker.sourceType = sourceType
            picker.delegate = self
            self.present(picker,animated: true)
        }
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        let image = info[UIImagePickerController.InfoKey.originalImage]as! UIImage
        self.imageView.image = image
        UIImageWriteToSavedPhotosAlbum(image,nil ,nil ,nil )
        self.dismiss(animated: true)
    }

    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
        
}
