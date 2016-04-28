//
//  MainViewController.swift
//  SwiftTakePhotoDome
//
//  Created by 袁斌 on 16/4/9.
//  Copyright © 2016年 __defaultyuan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    /// 拍照按钮
    @IBOutlet weak var takePhotoBtn: UIButton!
    /// 预览照片
    @IBOutlet weak var picImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "自定义拍照"
        /**
        创建UI
        */
        createUI()
    }

    func createUI() ->Void{
    
        let radius = CGFloat.init(4.0)
        takePhotoBtn.cornerRadius(radius, borderColor: UIColor.redColor().CGColor, borderWidth: 0.0)
        
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
