//
//  Data+Decodeable.swift
//  Verv
//
//  Created by Daniel K. Poulsen on 28/08/2018.
//  Copyright © 2018 Daniel K. Poulsen. All rights reserved.
//

import Foundation

extension Data{
    func map<R : Decodable>(decodable : R.Type) throws -> R{
        let jsonDecoder = JSONDecoder()
        return try jsonDecoder.decode(decodable, from: self)
    }
}
