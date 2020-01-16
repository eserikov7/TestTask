//
//  FormBuilder.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

public class FormBuilder {
    public static func indstantTickersVC() -> UIViewController {
        let vc = UIStoryboard(name: "Tickers", bundle: nil)
            .instantiateViewController(withIdentifier: "UITickersVC")
        return vc
    }
}
