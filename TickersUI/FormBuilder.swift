//
//  FormBuilder.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import TestTaskModel

public class FormBuilder {
    public static func indstantTickersVC() -> UIViewController {
        let vc = UIStoryboard(name: "Tickers", bundle: Bundle(identifier: "test.TickersUI"))
            .instantiateViewController(withIdentifier: "UITickersVC") as! UITickersVC
        vc.service = TickersService()
        return vc
    }
    
    public static func indstantTickersInfoVC(ticker:TickerInfo) -> UIViewController {
        let vc = UIStoryboard(name: "Tickers", bundle: Bundle(identifier: "test.TickersUI"))
            .instantiateViewController(withIdentifier: "UITickerInfoVC") as! UITickerInfoVC
        vc.ticker = ticker
        return vc
    }
}
