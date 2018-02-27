//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Simon Zhen on 2/26/18.
//  Copyright © 2018 Simon Zhen. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func colorBtnPressed(sender: UIButton){
        //pass data to delegate
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
