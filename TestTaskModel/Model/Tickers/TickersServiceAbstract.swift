//
//  TickersServiceAbstract.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

public protocol TickersServiceAbstract {
    var tickers:[TickerInfo] {get}
    
    func fetch(completion:@escaping (Result<[TickerInfo], Error>)->Void)
}
