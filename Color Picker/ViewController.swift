//
//  ViewController.swift
//  Color Picker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 iem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerDelegate {
    
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

    func userDidChooseAColor(color: UIColor) {
        dismiss(animated: true, completion: {self.backgroundView.backgroundColor = color})
    }
}

