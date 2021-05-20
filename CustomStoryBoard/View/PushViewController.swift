//
//  PushViewController.swift
//  CustomStoryBoard
//
//  Created by LongDN on 20/05/2021.
//

import UIKit

class PushViewController: UIViewController, UISearchBarDelegate {

    
    @IBAction func ActionPush(_ sender: Any) {
        
        let popviewcontroller = storyboard?.instantiateViewController(identifier: "PopViewController") as! PopViewController
        navigationController?.pushViewController(popviewcontroller, animated: false)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        
    }
    
    

}
