//
//  String+Localized.swift
//  Localization
//
//  Created by Евгений Ерофеев on 24.02.22.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
}
