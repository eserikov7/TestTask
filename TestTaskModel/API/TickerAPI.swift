//
//  TickerAPI.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import Moya

enum TickerAPI {
    case fetch
}

extension TickerAPI: TargetType {
    
    var baseURL: URL {
        return kBaseUrl
    }
    
    var path: String {
        switch self {
        case .fetch:
            return kTickerUrl
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .fetch:
            return .get
        }
    }
    
    var task: Task {
        return .requestPlain
    }

    var headers: [String : String]? {
        return nil
    }

    var sampleData: Data {
        return Data()
    }

}
