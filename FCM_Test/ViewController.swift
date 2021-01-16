//
//  ViewController.swift
//  FCM_Test
//
//  Created by 김수완 on 2021/01/16.
//

import UIKit
import FirebaseMessaging

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getToken(_ sender: Any) {
        Messaging.messaging().token{ token, err in
            if let err = err {
                print(err)
            } else {
                print(token)
            }
        }
    }
    
}

