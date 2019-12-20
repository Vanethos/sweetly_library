//
//  ViewController.swift
//  sweetly_ios_embedding
//
//  Created by vanethos on 12/18/2019.
//  Copyright (c) 2019 vanethos. All rights reserved.
//

import UIKit
import sweetly_ios_embedding

class ViewController: UIViewController {
    var button : UIButton = UIButton(type:UIButton.ButtonType.custom)

    override func viewDidLoad() {
      super.viewDidLoad()

      // Make a button to call the showFlutter function when pressed.
      button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
      button.setTitle("Show Flutter!", for: UIControl.State.normal)
      button.frame = CGRect(x: 80.0, y: 210.0, width: 300.0, height: 40.0)
      button.backgroundColor = UIColor.blue
      self.view.addSubview(button)
    }

    @objc func showFlutter() {
        FlutterSweetly.shared.showScreen(vc: self, completion: {
            (value) -> Void in
            self.button.setTitle(value.name, for: UIControl.State.normal)
        })
    }

}

