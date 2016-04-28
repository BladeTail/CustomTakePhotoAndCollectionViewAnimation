//
//  TakePhotoController.swift
//  SwiftTakePhotoDome
//
//  Created by 袁斌 on 16/4/9.
//  Copyright © 2016年 __defaultyuan. All rights reserved.
//

import UIKit
import AVFoundation

class TakePhotoController: UIViewController {
    
    
    @IBOutlet weak var takePhotoBtn: UIButton!
    
    var session : AVCaptureSession?
    var videoInput : AVCaptureDevice?
    var stillImageOutput : AVCaptureStillImageOutput?
    var previewLayer : AVCaptureVideoPreviewLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "自定义拍照"
        takePhotoBtn.cornerRadius(takePhotoBtn.frame.size.width / 2.0, borderColor: UIColor.redColor().CGColor, borderWidth: 1.0);
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
