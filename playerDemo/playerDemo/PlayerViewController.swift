//
//  PlayerViewController.swift
//  playerDemo
//
//  Created by ancheng on 2017/3/15.
//  Copyright © 2017年 ac. All rights reserved.
//

import UIKit
import SnapKit

class PlayerViewController: UIViewController {
  
  private var playerView = ACPlayer()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = UIColor.white
    playerView.frame = UIScreen.main.bounds
    playerView.delegate = self
    playerView.videoResource = .URLString("http://baobab.wdjcdn.com/1456117847747a_x264.mp4")
    playerView.play()
    view.addSubview(playerView)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
//    playerView.play()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: true)
    UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: false)
    
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.setNavigationBarHidden(false, animated: true)
    UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.default, animated: false)
  }
  
  deinit {
    print("PlayerViewController deinit")
  }
}

extension PlayerViewController: ACPlayerDelegate {
  func backButtonDidClicked(in player: ACPlayer) {
    navigationController?.popViewController(animated: true)
  }
}
