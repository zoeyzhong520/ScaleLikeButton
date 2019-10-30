//
//  ViewController.swift
//  ScaleLikeButton
//
//  Created by 仲召俊 on 2019/10/30.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let PraiseImage = "news_btn_up_sel"
    private let UnPraiseImage = "news_btn_up_unsel"
    
    private var praiseBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .lightGray
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 96, height: 116))
        btn.setImage(UIImage(named: UnPraiseImage), for: .normal)
        btn.setImage(UIImage(named: PraiseImage), for: .selected)
        btn.center = view.center
        btn.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        view.addSubview(btn)
        praiseBtn = btn
    }


}

extension ViewController {
    @objc
    func btnAction(_ button: UIButton) {
        button.isSelected = !button.isSelected
        if button.isSelected {
            button.z_shakeToShow()
        }
    }
}

