//
//  User.swift
//  TDD
//
//  Created by Klevison Matias on 10/6/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import Foundation

final class User {
    
    var name: String?
    var email: String?
    
    
}

extension String {
    public var isEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
