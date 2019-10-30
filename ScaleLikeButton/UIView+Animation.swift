//
//  UIView+Animation.swift
//  ScaleLikeButton
//
//  Created by 仲召俊 on 2019/10/30.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit

extension UIView {
    ///添加放大、缩小点赞动画
    func z_praiseAnimation() {
        let animation = CAKeyframeAnimation(keyPath: "transform.scale")
        animation.values = [1.3, 0.8, 1.0, 1.1, 1.0]
        animation.calculationMode = .cubic
        animation.duration = 0.5
        layer.add(animation, forKey: "transform.scale")
    }
    
    ///点赞放大效果
    func z_shakeToShow() {
        let animation = CAKeyframeAnimation(keyPath: "transform")
        animation.duration = 1.0
        animation.values = [
            NSValue(caTransform3D: CATransform3DMakeScale(0.1, 0.1, 1.0)),
            NSValue(caTransform3D: CATransform3DMakeScale(1.5, 1.5, 1.0)),
            NSValue(caTransform3D: CATransform3DMakeScale(0.9, 0.9, 1.0)),
            NSValue(caTransform3D: CATransform3DMakeScale(1.0, 1.0, 1.0))
        ]
        layer.add(animation, forKey: "transform")
    }
    
}
