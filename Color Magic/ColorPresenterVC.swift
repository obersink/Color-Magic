//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Simon Zhen on 2/26/18.
//  Copyright © 2018 Simon Zhen. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController {

    @IBOutlet weak var colorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            //set delegate
            colorPickerVC.delegate = self
        }
    }
    
}

extension ColorPresenterVC: ColorTransferDelegate {
    //implement delegate
    func userDidChoose(color: UIColor, withName colorName: String) {
        colorLbl.text = colorName
        view.backgroundColor = color
    }
}
