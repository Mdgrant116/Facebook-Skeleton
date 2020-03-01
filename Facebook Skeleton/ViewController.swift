//
//  ViewController.swift
//  Facebook Skeleton
//
//  Created by Michael Grant on 3/1/20.
//  Copyright © 2020 Michael Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showSkeleton()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func showSkeleton() {
        let skeletonView = UIView()
        
        skeletonView.backgroundColor = .white
        view.addSubview(skeletonView)
        skeletonView.frame = CGRect(x: 0, y: 10, width: view.bounds.width, height: 250)
        
    }
    
}

