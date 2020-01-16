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
    
    var id:String?
    var name:String?
    var symbol:String?
    var price_usd:Float?
    var price_btc:Float?
    
    required public init?(map: Map) { }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        symbol <- map["symbol"]
        price_usd <- (map["price_usd"], FloatTransform())
        price_btc <- (map["price_btc"], FloatTransform())
    }
}
