//
//  VCCodeStoryboard.swift
//  CustomStoryBoard
//
//  Created by LongDN on 19/05/2021.
//

import UIKit

class VCCodeStoryboard: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // USING NSLayoutConstraint
        let newView = UIView()
        newView.backgroundColor = UIColor(red: 33/255, green: 89/255, blue: 150/255, alpha: 1)
        self.view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.init(item: newView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint.init(item: newView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1/2, constant: 0).isActive = true
        NSLayoutConstraint(item: newView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        NSLayoutConstraint(item: newView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300).isActive = true
        
        
        
        
        let myView1 = UIView()
        myView1.backgroundColor = UIColor.yellow
        newView.addSubview(myView1)
        
        myView1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: myView1, attribute: .centerX, relatedBy: .greaterThanOrEqual, toItem: newView, attribute: .centerX, multiplier: 1/2, constant: 0).isActive = true
        NSLayoutConstraint(item: myView1, attribute: .centerY, relatedBy: .equal, toItem: newView, attribute: .centerY, multiplier: 1/2, constant: 0).isActive = true
        NSLayoutConstraint(item: myView1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100).isActive = true
        NSLayoutConstraint(item: myView1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100).isActive = true
        
        
        
        let myView2 = UIView()
        myView2.backgroundColor = UIColor.cyan
        newView.addSubview(myView2)
        
        myView2.translatesAutoresizingMaskIntoConstraints = false
        let heightView2 = NSLayoutConstraint(item: myView2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
        
        let widthView2 = NSLayoutConstraint(item: myView2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        let centerXView2 = NSLayoutConstraint(item: myView2, attribute: .top, relatedBy: .equal, toItem: newView, attribute: .top, multiplier: 1, constant: 50)
        
        let centerYView2 = NSLayoutConstraint(item: myView2, attribute: .right, relatedBy: .equal, toItem: newView, attribute: .right, multiplier: 1, constant: -20)
        
        
        
        
        // truong hop khai bao va cho no vao action,....
        NSLayoutConstraint.activate([ widthView2, heightView2 , centerXView2, centerYView2])
        //NSLayoutConstraint.activate([widthMyView, heightMyView])
        
        
        // không nên code giao diện theo kiểu này.
        let newView2 = UIView()
            newView2.backgroundColor = UIColor.red
            view.addSubview(newView2)
            //newView2.translatesAutoresizingMaskIntoConstraints = false
            let views = ["view": view!, "newView2": newView2]
            let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[view]-(<=0)-[newView2(150)]", options: NSLayoutConstraint.FormatOptions.alignAllCenterY, metrics: nil, views: views)
            let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[view]-(<=0)-[newView2(150)]", options: NSLayoutConstraint.FormatOptions.alignAllCenterX, metrics: nil, views: views)
            view.addConstraints(horizontalConstraints)
            view.addConstraints(verticalConstraints)
        
        
        
        
        // USING AUTORESIZINGMASK:
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
            view1.backgroundColor = UIColor.red
            view.addSubview(view1)

            view1.translatesAutoresizingMaskIntoConstraints = true
        view1.center = CGPoint(x: view.bounds.midX, y: 200)
        
            view1.autoresizingMask = [
                //UIView.AutoresizingMask.flexibleHeight,
                //UIView.AutoresizingMask.flexibleWidth,
                //UIView.AutoresizingMask.flexibleTopMargin,
//                UIView.AutoresizingMask.flexibleBottomMargin
            ]
        
        
        // USING NSLAYOUTACHOR:
        let viewAchor = UIView()
        viewAchor.backgroundColor = UIColor.yellow
        view.addSubview(viewAchor)
        viewAchor.translatesAutoresizingMaskIntoConstraints = false
//        viewAchor.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
//        viewAchor.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        viewAchor.heightAnchor.constraint(equalToConstant: 200).isActive = true
        viewAchor.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        viewAchor.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        viewAchor.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        
        // su dung voi width no se goi cai contraint co thuoc yinh khac
//        viewAchor.widthAnchor.constraint(equalTo: view.safeAreaInsets.bottom, multiplier: <#T##CGFloat#>)
        
        //viewAchor.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
        
    }
    
}
