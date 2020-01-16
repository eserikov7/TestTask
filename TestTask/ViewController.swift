//
//  ViewController.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

import TickersUI

class ViewController: UIViewController {

    @IBAction func runAction() {
        self.navigationController?.pushViewController(FormBuilder.indstantTickersVC(), animated: true)
    }

}

