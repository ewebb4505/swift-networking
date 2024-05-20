//
//  NetworkRequestManagerProtocol.swift
//  
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

protocol NetworkRequestManagerProtocol {
    func perform(_ request: RequestProtocol) async throws -> Data
}
