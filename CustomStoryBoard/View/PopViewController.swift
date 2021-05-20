//
//  PopViewController.swift
//  CustomStoryBoard
//
//  Created by LongDN on 20/05/2021.
//

import UIKit

class PopViewController: UIViewController {

    @IBAction func ActionPop(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
