//
//  ViewController.swift
//  binary
//
//  Created by HKRdz Dev on 27/02/2019.
//  Copyright © 2019 HKRdz Dev. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var result: UITextView!

    @IBOutlet weak var number: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    @IBAction func binarycode(_ sender: Any) {
       
        let nbr = Int(number.text!)
        
        let resbin = String(nbr!, radix: 2)
        
        result.text = resbin
        
    }
    
}

