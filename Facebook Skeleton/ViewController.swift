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

        showSkeleton1()
        showSkeleton2()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func showSkeleton1() {
        let skeletonView = UIView()

        skeletonView.backgroundColor = .white
       
        view.addSubview(skeletonView)


        skeletonView.frame = CGRect(x: 10, y: 18, width: view.bounds.width - 20, height: 80)
        
       
        
        let backgroundGradientLayer = CAGradientLayer()

        backgroundGradientLayer.frame = skeletonView.bounds
        backgroundGradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        backgroundGradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        backgroundGradientLayer.locations = [0.25, 0.5, 0.75]

        backgroundGradientLayer.colors = [
            UIColor(red: 42 / 255, green: 46 / 255, blue: 48 / 255, alpha: 0.23).cgColor,
            UIColor(red: 42 / 255, green: 46 / 255, blue: 48 / 255, alpha: 0.04).cgColor,
            UIColor(red: 42 / 255, green: 46 / 255, blue: 48 / 255, alpha: 0.23).cgColor
        ]

        skeletonView.layer.addSublayer(backgroundGradientLayer)
//        skeletonView2.layer.addSublayer(backgroundGradientLayer)
        
        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.65, 1.0, 1.0]
        gradientAnimation.duration = 1.7
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
        
//        let total = UILabel()
//        total.font = UIFont(name: "SFProText", size: 90)
//        total.textColor = #colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
//        total.text = "MEIJER SAVINGS"
//        total.frame = CGRect(x: 20, y: 10, width: 200, height: 20)
//        skeletonView.addSubview(total)
//

        let contentFrame1 = UIBezierPath(roundedRect: CGRect(x: 20, y: 15 , width: view.bounds.width * 0.40, height: 20), cornerRadius: 5)
        skeletonFrame.append(contentFrame1)
        
        let contentFrame2 = UIBezierPath(roundedRect: CGRect(x: 20, y: 50 , width: view.bounds.width * 0.45, height: 20), cornerRadius: 5)
            skeletonFrame.append(contentFrame2)
        
        let contentFrame3 = UIBezierPath(roundedRect: CGRect(x: 265, y: 50 , width: view.bounds.width * 0.20, height: 20), cornerRadius: 5)
        skeletonFrame.append(contentFrame3)
        
        
     
        
        button.layer.cornerRadius = 15


      

        let skeltonShape = CAShapeLayer()

        skeltonShape.path = skeletonFrame.cgPath

        skeltonShape.fillColor = UIColor.black.cgColor

        skeltonShape.frame = skeletonView.bounds

        backgroundGradientLayer.mask = skeltonShape
    }
    
    func showSkeleton2() {
        
        let skeletonView2 = UIView()
               skeletonView2.backgroundColor = .white
               view.addSubview(skeletonView2)
               skeletonView2.frame = CGRect(x: 10, y: 110, width: view.bounds.width - 20, height: 228)
        
           
                let backgroundGradientLayer = CAGradientLayer()

                backgroundGradientLayer.frame = skeletonView2.bounds
                backgroundGradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
                backgroundGradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
                backgroundGradientLayer.locations = [0.25, 0.5, 0.75]

                backgroundGradientLayer.colors = [
                    UIColor(red: 42 / 255, green: 46 / 255, blue: 48 / 255, alpha: 0.23).cgColor,
                    UIColor(red: 42 / 255, green: 46 / 255, blue: 48 / 255, alpha: 0.04).cgColor,
                    UIColor(red: 42 / 255, green: 46 / 255, blue: 48 / 255, alpha: 0.23).cgColor
                ]

                skeletonView2.layer.addSublayer(backgroundGradientLayer)
                
                let gradientAnimation = CABasicAnimation(keyPath: "locations")
                gradientAnimation.fromValue = [0.0, 0.0, 0.25]
                gradientAnimation.toValue = [0.65, 1.0, 1.0]
                gradientAnimation.duration = 1.7
                gradientAnimation.repeatCount = .greatestFiniteMagnitude
                gradientAnimation.fillMode = CAMediaTimingFillMode.forwards
                gradientAnimation.isRemovedOnCompletion = false
                backgroundGradientLayer.add(gradientAnimation, forKey: nil)

                let skeletonFrame = UIBezierPath()
          
                skeletonView2.layer.cornerRadius = 15
                skeletonView2.layer.shadowOpacity = 1
                skeletonView2.layer.shadowColor = #colorLiteral(red: 0.8823529412, green: 0.8823529412, blue: 0.8823529412, alpha: 1)
                skeletonView2.layer.shadowOffset = CGSize(width: 0, height: 2)
                skeletonView2.layer.shadowRadius = 4
                
        
        
        let contentFrame1 = UIBezierPath(roundedRect: CGRect(x: 20, y: 15 , width: view.bounds.width * 0.40, height: 20), cornerRadius: 5)
              skeletonFrame.append(contentFrame1)
              
              let contentFrame2 = UIBezierPath(roundedRect: CGRect(x: 20, y: 50 , width: view.bounds.width * 0.45, height: 20), cornerRadius: 5)
                  skeletonFrame.append(contentFrame2)
              
              let contentFrame3 = UIBezierPath(roundedRect: CGRect(x: 265, y: 50 , width: view.bounds.width * 0.20, height: 20), cornerRadius: 5)
              skeletonFrame.append(contentFrame3)
        
        
        
        let contentFrame4 = UIBezierPath(roundedRect: CGRect(x: 20, y: 100 , width: view.bounds.width * 0.45, height: 20), cornerRadius: 5)
            skeletonFrame.append(contentFrame4)
        
        let contentFrame5 = UIBezierPath(roundedRect: CGRect(x: 265, y: 100 , width: view.bounds.width * 0.20, height: 20), cornerRadius: 5)
        skeletonFrame.append(contentFrame5)
//
        let contentFrame6 = UIBezierPath(roundedRect: CGRect(x: 20, y: 150 , width: view.bounds.width * 0.45, height: 20), cornerRadius: 5)
            skeletonFrame.append(contentFrame6)

        let contentFrame7 = UIBezierPath(roundedRect: CGRect(x: 265, y: 150 , width: view.bounds.width * 0.20, height: 20), cornerRadius: 5)
        skeletonFrame.append(contentFrame7)
//
        let contentFrame8 = UIBezierPath(roundedRect: CGRect(x: 20, y: 200 , width: view.bounds.width * 0.45, height: 20), cornerRadius: 5)
            skeletonFrame.append(contentFrame8)

        let contentFrame9 = UIBezierPath(roundedRect: CGRect(x: 265, y: 200 , width: view.bounds.width * 0.20, height: 20), cornerRadius: 5)
        skeletonFrame.append(contentFrame9)
        
        

        let skeltonShape = CAShapeLayer()

        skeltonShape.path = skeletonFrame.cgPath

        skeltonShape.fillColor = UIColor.black.cgColor

        skeltonShape.frame = skeletonView2.bounds

        backgroundGradientLayer.mask = skeltonShape
    }
    
    func configureText() {
        
        
    }
}
