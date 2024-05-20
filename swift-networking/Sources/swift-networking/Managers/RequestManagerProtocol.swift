//
//  RequestManagerProtocol.swift
//
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

protocol RequestManagerProtocol {
    func perform<T: Decodable>(_ request: RequestProtocol) async throws -> T
    func performWithNoParsing(_ request: RequestProtocol) async throws
}
