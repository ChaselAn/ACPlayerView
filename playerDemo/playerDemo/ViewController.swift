//
//  ViewController.swift
//  playerDemo
//
//  Created by ancheng on 2017/3/15.
//  Copyright © 2017年 ac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    navigationController?.pushViewController(PlayerViewController(), animated: true)
  }
}

