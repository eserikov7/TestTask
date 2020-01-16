//
//  UITickerInfoVC.swift
//  TickersUI
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import TestTaskModel

class UITickerInfoVC: UIViewController {

    @IBOutlet var name:UILabel!
    @IBOutlet var symbol:UILabel!
    @IBOutlet var price_usd:UILabel!
    @IBOutlet var price_btc:UILabel!
    
    var ticker:TickerInfo?

    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = ticker?.name
        symbol.text = ticker?.symbol
        price_usd.text = ticker?.price_usd
        price_btc.text = ticker?.price_btc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
