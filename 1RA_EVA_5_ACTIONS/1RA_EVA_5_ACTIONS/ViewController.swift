//
//  ViewController.swift
//  1RA_EVA_5_ACTIONS
//
//  Created by TEMPORAL2 on 07/02/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFldMensa: UITextField!
    
    
    @IBAction func btnTouch(sender: UIButton) {
        var sMensa = txtFldMensa.text
        lblEtiq.text = sMensa
        
        let acMiDialogo = UIAlertController(title: "HOLA MUNDO", message: sMensa, preferredStyle: .Alert)
        
        let btnOk = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        
        acMiDialogo.addAction(btnOk)
        
        presentViewController(acMiDialogo, animated: true, completion: nil)
    }
    
    @IBOutlet weak var lblEtiq: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

