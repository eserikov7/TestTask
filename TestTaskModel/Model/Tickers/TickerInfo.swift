//
//  TickerInfo.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import ObjectMapper

public class TickerInfo: Mappable {
    
    public var name:String?
    public var symbol:String?
    public var price_usd:String?//Можно перевести в Float но там нужно просто отобразить поэтому String
    public var price_btc:String?
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        name <- map["name"]
        symbol <- map["symbol"]
        price_usd <- map["price_usd"]
        price_btc <- map["price_btc"]
    }
}
