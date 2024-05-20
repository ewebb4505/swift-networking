//
//  JSONDataParser.swift
//
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

public class JSONDataParser: DataParserProtocol {
    private var jsonDecoder: JSONDecoder

    init(jsonDecoder: JSONDecoder = JSONDecoder()) {
        self.jsonDecoder = jsonDecoder
        self.jsonDecoder.dateDecodingStrategy = .iso8601
    }

    func parse<T: Decodable>(data: Data) throws -> T {
        let parsedData = try jsonDecoder.decode(T.self, from: data)
        return parsedData
    }
}
