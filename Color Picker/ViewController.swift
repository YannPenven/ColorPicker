//
//  ViewController.swift
//  Color Picker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 iem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PickColor" {
            let destination = segue.destination as! ColorPickerViewController
            destination.delegate = self
        }
    }

    
}

extension ViewController: ColorPickerDelegate {
    func userDidChooseAColor(color: UIColor) {
        dismiss(animated: true, completion: {})
        let alertController = UIAlertController(title: "Destructive", message: "Simple alertView demo with Destructive and Ok.", preferredStyle: UIAlertControllerStyle.alert)
        let DestructiveAction = UIAlertAction(title: "Oui", style: UIAlertActionStyle.destructive) { (result : UIAlertAction) -> Void in
            self.backgroundView.backgroundColor = color
        }
        let nonAction = UIAlertAction(title: "Non", style: UIAlertActionStyle.default)
        alertController.addAction(DestructiveAction)
        alertController.addAction(nonAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
}

