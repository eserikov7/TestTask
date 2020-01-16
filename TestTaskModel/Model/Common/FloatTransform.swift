//
//  FloatTransform.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import ObjectMapper

class FloatTransform: TransformType {
    func transformFromJSON(_ value: Any?) -> Float? {
        if let value = value as? String {
            return Float(value)
        } else if let value = value as? Float {
            return value
        }
        return nil
    }
    
    func transformToJSON(_ value: Float?) -> String? {
        return nil
    }
    
    typealias Object = Float
    
    typealias JSON = String
    

}
