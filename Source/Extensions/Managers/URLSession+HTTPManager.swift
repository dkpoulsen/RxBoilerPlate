//
//  URLSession+HTTPManager.swift
//  JustEatTest
//
//  Created by Daniel K. Poulsen on 28/08/2018.
//  Copyright © 2018 Daniel K. Poulsen. All rights reserved.
//

import Foundation
import RxSwift

extension Reactive : HTTPManager where Base : URLSession{
    func get(url: URL, header : [String : String]? = nil, params: [String : String]? = nil) -> Observable<Data> {
        var component = URLComponents(url: url, resolvingAgainstBaseURL: true)
        if let unwrappedParams = params{
            component?.queryItems = unwrappedParams.compactMap{URLQueryItem(name:$0.key, value: $0.value)}
        }
        guard let resolvedURL = component?.url else {return Observable.error(URLError(.badURL))}
        var request = URLRequest(url: resolvedURL)
        request.allHTTPHeaderFields = header
        return data(request: request)
    }
}
