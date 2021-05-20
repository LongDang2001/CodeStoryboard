//
//  CustomAnchorContraint.swift
//  CustomStoryBoard
//
//  Created by admin on 5/20/21.
//

import UIKit

class CustomAnchorContraint: UIViewController {

    let viewTest = UIView()
    let view1 = UIView()
    let view2 = UIView()
    let viewTong = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Using NSLayoutContraint
        viewTong.backgroundColor = UIColor.yellow
        view.addSubview(viewTong)
        viewTong.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.init(item: viewTong, attribute: .centerX, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: viewTong, attribute: .centerY, relatedBy: .greaterThanOrEqual, toItem: view.safeAreaLayoutGuide, attribute: .centerY, multiplier: 1/2, constant: 0).isActive = true
        NSLayoutConstraint(item: viewTong, attribute: .height, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 2/3, constant: 0).isActive = true
        NSLayoutConstraint(item: viewTong, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 2/3, constant: 0).isActive = true
        viewTong.layer.borderWidth = 8
        viewTong.layer.cornerRadius = 20
        viewTong.layer.backgroundColor = CGColor(srgbRed: 244/255, green: 50/255, blue: 120/255, alpha: 1)
        
        
        layoutViewChild()
        
              // Using NSLayout Anchor:
                let viewYellow = UIView()
                view.addSubview(viewYellow)
                viewYellow.backgroundColor = UIColor.yellow
                viewYellow.translatesAutoresizingMaskIntoConstraints = false
                viewYellow.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 30).isActive = true
                viewYellow.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
                viewYellow.leftAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
                viewYellow.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //        viewYellow.trailingAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        //        viewYellow.leadingAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
    }
    
    func layoutViewChild() {
        
        
        // Using NSLayout Contraint
        view1.backgroundColor = UIColor.blue
        viewTong.addSubview(view1)
        view1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.init(item: view1, attribute: .centerX, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: view1, attribute: .centerY, relatedBy: .greaterThanOrEqual, toItem: view.safeAreaLayoutGuide, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: viewTong, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
        NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: viewTong, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
        
        
        // Using NSLayuoutAchor:
        viewTest.backgroundColor = UIColor.cyan
        viewTong.addSubview(viewTest)
        viewTest.translatesAutoresizingMaskIntoConstraints = false
        viewTest.centerXAnchor.constraint(equalToSystemSpacingAfter: viewTong.centerXAnchor, multiplier: 1).isActive = true
        viewTest.topAnchor.constraint(equalTo: viewTong.topAnchor, constant: 30).isActive = true
        viewTest.widthAnchor.constraint(equalToConstant: 100).isActive = true
        viewTest.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewTest.layer.borderWidth = 5
        viewTest.layer.cornerRadius = 20
        viewTest.layer.borderColor = CGColor(srgbRed: 75/255, green: 79/255, blue: 103/255, alpha: 1)
        
        
        // Kết hợp cả NSLayoutContraint và NSLayoutAchor.
        view2.backgroundColor = UIColor.orange
        viewTong.addSubview(view2)
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.centerXAnchor.constraint(equalToSystemSpacingAfter: viewTong.centerXAnchor, multiplier: 1).isActive = true
        view2.centerYAnchor.constraint(equalToSystemSpacingBelow: viewTong.centerYAnchor, multiplier: 3/2).isActive = true
        NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: viewTong, attribute: .height, multiplier: 1/4, constant: 0).isActive = true
        NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: viewTong, attribute: .height, multiplier: 1/4, constant: 0).isActive = true
        view2.layer.borderWidth = 5
        view2.layer.cornerRadius = 20
        view2.layer.borderColor = CGColor(srgbRed: 200/255, green: 90/255, blue: 180/255, alpha: 1)
        
        
    }

}
