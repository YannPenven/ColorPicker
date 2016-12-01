//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by iem on 01/12/2016.
//  Copyright © 2016 iem. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate {
    func userDidChooseAColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    var delegate: ColorPickerDelegate?
    
    /*red: R:129 G:22 B:62
     green: R:32 G:203 B:136
     orange: R:236 G:102 B:30*/
    
    struct Color {
        static let redColor = UIColor(red: 129, green: 22, blue: 62, alpha: 0)
        static let greenColor = UIColor(red: 32, green: 203, blue: 136, alpha: 0)
        static let orangeColor = UIColor(red: 236, green: 102, blue: 30, alpha: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        delegate?.userDidChooseAColor(color: Color.greenColor)
    }
    
    @IBAction func orangeButton(_ sender: UIButton) {
        delegate?.userDidChooseAColor(color: Color.orangeColor)
    }
    
    @IBAction func redButton(_ sender: UIButton) {
        delegate?.userDidChooseAColor(color: Color.redColor)
    }
    
}
