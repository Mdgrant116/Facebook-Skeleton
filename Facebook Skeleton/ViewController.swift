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
        
        let backgroundGradientLayer = CAGradientLayer()
        
        backgroundGradientLayer.frame = skeletonView.bounds
        
        backgroundGradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        backgroundGradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        backgroundGradientLayer.locations = [0.25, 0.5, 0.75]
        
        backgroundGradientLayer.colors = [
            UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 1.0).cgColor,
            UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1.0).cgColor,
            UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 1.0).cgColor,]
        
        skeletonView.layer.addSublayer(backgroundGradientLayer)
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        
        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.65, 1.0, 1.0]
        
        gradientAnimation.duration = 1
        
        gradientAnimation.repeatCount = .greatestFiniteMagnitude
        gradientAnimation.fillMode = CAMediaTimingFillMode.forwards
        gradientAnimation.isRemovedOnCompletion = false
        
        backgroundGradientLayer.add(gradientAnimation, forKey: nil)
        
    }
    
}

