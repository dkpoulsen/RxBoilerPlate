//
//  HTTPManager.swift
//  JustEatTest
//
//  Created by Daniel K. Poulsen on 28/08/2018.
//  Copyright © 2018 Daniel K. Poulsen. All rights reserved.
//

import Foundation
import RxSwift

protocol HTTPManager {
    func get(url : URL, header : [String : String]?,params : [String : String]?) -> Observable<Data>
}
