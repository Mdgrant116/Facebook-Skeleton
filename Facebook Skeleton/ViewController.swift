//
//  ViewController.swift
//  Facebook Skeleton
//
//  Created by Michael Grant on 3/1/20.
//  Copyright © 2020 Michael Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var button: UIButton!
    
    
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

       
//        let numberOfCells = Int(viewHeight / 150 + 1)
       

        skeletonView.frame = CGRect(x: 10, y: 10, width: view.bounds.width - 20, height: 150)
        
        
        
        let backgroundGradientLayer = CAGradientLayer()

        backgroundGradientLayer.frame = skeletonView.bounds

        backgroundGradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        backgroundGradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        backgroundGradientLayer.locations = [0.25, 0.5, 0.75]

        backgroundGradientLayer.colors = [
            UIColor(red: 184 / 255, green: 184 / 255, blue: 184 / 255, alpha: 1.0).cgColor,
            UIColor(red: 211 / 255, green: 211 / 255, blue: 211 / 255, alpha: 1.0).cgColor,
            UIColor(red: 184 / 255, green: 184 / 255, blue: 184 / 255, alpha: 1.0).cgColor,
        ]

        skeletonView.layer.addSublayer(backgroundGradientLayer)
        let gradientAnimation = CABasicAnimation(keyPath: "locations")

        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.65, 1.0, 1.0]

        gradientAnimation.duration = 1.5

        gradientAnimation.repeatCount = .greatestFiniteMagnitude
        gradientAnimation.fillMode = CAMediaTimingFillMode.forwards
        gradientAnimation.isRemovedOnCompletion = false

        backgroundGradientLayer.add(gradientAnimation, forKey: nil)

        let skeletonFrame = UIBezierPath()
        
        skeletonView.layer.cornerRadius = 15
        skeletonView.layer.shadowOpacity = 1
        skeletonView.layer.shadowColor = #colorLiteral(red: 0.8823529412, green: 0.8823529412, blue: 0.8823529412, alpha: 1)
        skeletonView.layer.shadowOffset = CGSize(width: 0, height: 2)
        skeletonView.layer.shadowRadius = 4
        
        
        let total = UILabel()
        total.font = UIFont(name: "SFProText", size: 90)
        total.textColor = #colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
        total.text = "MEIJER SAVINGS"
        total.frame = CGRect(x: 20, y: 10, width: 200, height: 20)
        skeletonView.addSubview(total)
        

        let contentFrame1 = UIBezierPath(rect: CGRect(x: 20, y: 60 , width: view.bounds.width * 0.65, height: 10))

        skeletonFrame.append(contentFrame1)

        let contentFrame2 = UIBezierPath(rect: CGRect(x: 20, y: 95 , width: view.bounds.width * 0.75, height: 1))
        skeletonFrame.append(contentFrame2)

        let contenFrame3 = UIBezierPath(rect: CGRect(x: 20, y: 140, width: view.bounds.width * 0.4, height: 8))

        skeletonFrame.append(contenFrame3)
    
        
        button.layer.cornerRadius = 15

//        let gutter = UIView(frame: CGRect(x: 0, y: (150 - gutterHeight), width: view.bounds.width, height: gutterHeight))
//
//        gutter.backgroundColor = UIColor(red: 216 / 255, green: 216 / 255, blue: 216 / 255, alpha: 1)
//        skeletonView.addSubview(gutter)


      

        let skeltonShape = CAShapeLayer()

        skeltonShape.path = skeletonFrame.cgPath

        skeltonShape.fillColor = UIColor.black.cgColor

        skeltonShape.frame = skeletonView.bounds

        backgroundGradientLayer.mask = skeltonShape
    }
    
    func configureText() {
        
        
    }
}
