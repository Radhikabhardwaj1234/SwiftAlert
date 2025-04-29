//
//  ViewController.swift
//  alert
//
//  Created by Student on 03/04/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var img1: UIImageView!
    @IBAction func btn(_ sender: Any) {
        let yesAction = {
            (action : UIAlertAction) -> Void in self.view.backgroundColor = .green
            self.img1.image = UIImage.img
        }
        var noAction = {
            (action : UIAlertAction) -> Void in self.view.backgroundColor = .red
            self.img1.image = nil
        }
        
        let alert = UIAlertController(title: "Hello" , message : "Do you want to continue? ", preferredStyle : UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: "yes", style: UIAlertAction.Style.default , handler: yesAction))
        
        alert.addAction(UIAlertAction(title: "no", style: UIAlertAction.Style.default , handler: noAction))
        
        alert.addAction(UIAlertAction(title: "cancel", style: UIAlertAction.Style.destructive , handler: nil))
        present(alert , animated : true)
        
    }
    
}

