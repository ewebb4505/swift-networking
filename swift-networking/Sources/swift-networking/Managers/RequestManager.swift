//
//  RequestManager.swift
//
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

class RequestManager: RequestManagerProtocol {
    let apiManager: NetworkRequestManagerProtocol
    let parser: DataParserProtocol

    init(apiManager: NetworkRequestManagerProtocol = NetworkRequestManager(),
         parser: DataParserProtocol = JSONDataParser()) {
            self.apiManager = apiManager
            self.parser = parser
    }

    func perform<T: Decodable>(_ request: RequestProtocol) async throws -> T {
        let data = try await apiManager.perform(request)
        let decoded: T = try parser.parse(data: data)
        return decoded
    }
    
    func performWithNoParsing(_ request: RequestProtocol) async throws {
        let _ = try await apiManager.perform(request)
    }
}

