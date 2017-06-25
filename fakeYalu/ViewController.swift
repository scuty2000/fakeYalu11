//
//  ViewController.swift
//  fakeYalu
//
//  Created by Luca Scutigliani on 25/06/17.
//  Copyright © 2017 Scutigliani Luca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blackScreenButton: UIButton!
    @IBOutlet weak var weel: UIActivityIndicatorView!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.blackScreenButton.isHidden = true
        self.weel.isHidden = true
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButton(_ sender: Any) {
        
        self.goButton.isEnabled = false
        
        let when1 = DispatchTime.now() + 3
        DispatchQueue.main.asyncAfter(deadline: when1) {
            
            let alert = UIAlertController(title: "Archivio quasi pieno", message: "Puoi gestire lo spazio in Impostazioni.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Fine", style: UIAlertActionStyle.default, handler: nil))
            alert.addAction(UIAlertAction(title: "Impostazioni", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            let when2 = DispatchTime.now() + 0.7
            DispatchQueue.main.asyncAfter(deadline: when2) {
                
                self.dismiss(animated: true, completion: nil)
                
            }
            
        }
        
        let when = DispatchTime.now() + 4
        DispatchQueue.main.asyncAfter(deadline: when) {
            
            self.blackScreenButton.isHidden = false
            
            let when8 = DispatchTime.now() + 1
            DispatchQueue.main.asyncAfter(deadline: when8) {
                
                self.weel.isHidden = false
                
            }
            
        }
        
    }
    
    @IBAction func blackButton(_ sender: Any) {
        
        print("LoL")
        
    }
    
}

