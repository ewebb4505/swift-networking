//
//  File.swift
//  
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

public enum WebSocketConnectionError: Error {
    case connectionError
    case transportError
    case encodingError
    case decodingError
    case disconnected
    case closed
}
