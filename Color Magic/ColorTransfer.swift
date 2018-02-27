//
//  ColorTransfer.swift
//  Color Magic
//
//  Created by Simon Zhen on 2/26/18.
//  Copyright © 2018 Simon Zhen. All rights reserved.
//

import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
