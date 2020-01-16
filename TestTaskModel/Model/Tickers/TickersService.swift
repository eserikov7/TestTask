//
//  TickersService.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import Moya
import ObjectMapper

public class TickersService: TickersServiceAbstract {
    
    public init() { }
    
    private let provider = MoyaProvider<TickerAPI>()
    
    public var tickers = [TickerInfo]()
    
    public func fetch(completion:@escaping (Result<[TickerInfo], Error>)->Void) {
        provider.request(.fetch) { [weak self] (result) in
            guard let self = self else { return }

            switch result {
            case .success(let response):
                if let json = (try? response.mapJSON()) as? [[String : Any]] {
                    self.tickers = Mapper().mapArray(JSONArray:json)
                }
                completion(.success(self.tickers))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
