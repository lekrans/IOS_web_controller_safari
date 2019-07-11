//
//  ViewController.swift
//  IOS_web_controller_safari
//
//  Created by Michael Lekrans on 2019-07-11.
//  Copyright © 2019 Michael Lekrans. All rights reserved.
//

import UIKit
import SafariServices // <- import

class ViewController: UIViewController, SFSafariViewControllerDelegate { // <- delegate

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showWebContent(_ sender: Any) {
        let url = URL(string: "https://google.com")
        let safariVC = SFSafariViewController(url: url!)
        safariVC.delegate = self
        present(safariVC, animated: true) {
            print("presented")
        }
    }
    
    @IBAction func showSafari(_ sender: Any) {
        let url = URL(string: "https://google.com")
        UIApplication.shared.open(url!, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("safari finished!")
    }
}

