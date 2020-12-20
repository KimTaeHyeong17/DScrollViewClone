//
//  ViewController.swift
//  DScrollView
//
//  Created by TaeHyeong Kim on 12/20/2020.
//  Copyright (c) 2020 TaeHyeong Kim. All rights reserved.
//

import UIKit
import DScrollView
class ViewController: UIViewController {
    
    let scrollView = DScrollView()
    let scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 10)
    let scrollViewElement0 = DScrollViewElement(height: 1200, backgroundColor: .purple)
    let scrollViewElement1 = DScrollViewElement(height: 500, backgroundColor: .purple)
    
    let label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        label.text = "I am a label"
        
        view.addScrollView(scrollView,
                           withSafeArea: .none,
                           statusBarBackgroundColor: .systemPink,
                           container: scrollViewContainer,
                           elements: scrollViewElement0,scrollViewElement1
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

