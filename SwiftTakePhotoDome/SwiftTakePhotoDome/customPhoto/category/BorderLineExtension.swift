//
//  BorderLineExtension.swift
//  SwiftTakePhotoDome
//
//  Created by 袁斌 on 16/4/9.
//  Copyright © 2016年 __defaultyuan. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    /**
     分类
     
     - parameter corner: 边框圆角
     - parameter color:  边框颜色
     - parameter width:  边框宽度
     */
    public func cornerRadius(corner : CGFloat,borderColor color:CGColorRef, borderWidth width:CGFloat) ->Void
    {
        self.clipsToBounds = true
        self.layer.cornerRadius = corner
        self.layer.borderColor = color
        self.layer.borderWidth = width
    }
    
}
