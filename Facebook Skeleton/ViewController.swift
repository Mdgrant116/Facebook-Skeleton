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
        
        
        let  skeletonFrame = UIBezierPath()
        
        let profileFrame = UIBezierPath(ovalIn: CGRect(x: 20, y: 10, width: 60, height: 60))
        skeletonFrame.append(profileFrame)
        
        let titleFrame = UIBezierPath(rect: CGRect(x: 90, y: 20, width: view.bounds.width * 0.6 - 90, height: 8))
        skeletonFrame.append(titleFrame)
        
        let subTitleFrame = UIBezierPath(rect: CGRect(x: 90, y: 40, width: view.bounds.width * 0.4 - 90, height: 8))
        skeletonFrame.append(subTitleFrame)
        
        let contentFrame1 = UIBezierPath(rect: (CGRect(x: 20, y: 100, width: view.bounds.width * 0.65, height: 8)))
        
        skeletonFrame.append(contentFrame1)
        
        
        let contentFrame2 = UIBezierPath(rect: CGRect(x: 20, y: 120, width: view.bounds.width * 0.75, height: 8))
        skeletonFrame.append(contentFrame2)
        
        let contenFrame3 = UIBezierPath(rect: CGRect(x: 20, y: 140, width: view.bounds.width * 0.4, height: 8))
        
        skeletonFrame.append(contenFrame3)
        
        let skeltonShape = CAShapeLayer()
        
        skeltonShape.path = skeletonFrame.cgPath
        
        skeltonShape.fillColor = UIColor.black.cgColor
        
        skeltonShape.frame = skeletonView.bounds
        
        backgroundGradientLayer.mask = skeltonShape
    
        
        
        
        
        
    }
    
}

