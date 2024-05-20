//
//  File.swift
//  
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

protocol DataParserProtocol {
    func parse<T: Decodable>(data: Data) throws -> T
}
