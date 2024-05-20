//
//  NetworkRequestManager.swift
//
//
//  Created by Evan Webb on 5/19/24.
//

import Foundation

class NetworkRequestManager: NetworkRequestManagerProtocol {
    private let urlSession: URLSession

    init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }

    func perform(_ request: RequestProtocol) async throws -> Data {
        let (data, response) = try await urlSession.data(for: request.createURLRequest())
        
        // TODO: handle errors here a little better.
        guard let httpResponse = response as? HTTPURLResponse,
                (httpResponse.statusCode == 200 || httpResponse.statusCode == 204) else {
            throw NetworkError.invalidServerResponse
        }
        return data
    }
}
