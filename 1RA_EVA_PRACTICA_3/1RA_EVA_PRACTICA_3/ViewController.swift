//
//  ViewController.swift
//  1RA_EVA_PRACTICA_3
//
//  Created by TEMPORAL2 on 17/02/17.
//  Copyright © 2017 DAVIDRDZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var idTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBAction func btnTap(sender: AnyObject) {
        idTxt.resignFirstResponder()
        passTxt.resignFirstResponder()
    }
    @IBOutlet weak var txtError: UILabel!
    @IBAction func btnLog(sender: AnyObject) {
        
        if(idTxt.text == iduser && passTxt.text == passuser){
            
        let dialog = UIAlertController(title: "Hola " + iduser, message: "Bienvenido", preferredStyle: .Alert)
        let btnSi = UIAlertAction(title: "SI", style: .Default, handler: nil)
        let btnNo = UIAlertAction(title: "NO", style: .Cancel, handler: nil)
        dialog.addAction(btnSi)
        dialog.addAction(btnNo)
        presentViewController(dialog, animated: true, completion:nil)
        txtError.text = ""
            
        }else{
            
        txtError.text = "DATOS INCORRECTOS"
        
        }
        
        
    }
    
    var iduser = "david"
    var passuser = "1234"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

