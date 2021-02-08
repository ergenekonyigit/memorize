//
//  Array+Only.swift
//  Memorize
//
//  Created by Ergenekon Yiğit on 9.02.2021.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
