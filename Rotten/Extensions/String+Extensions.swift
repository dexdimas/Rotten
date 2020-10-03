//
//  String+Extensions.swift
//  Rotten
//
//  Created by Andimas Bagaswara on 03/10/20.
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String {
        
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
