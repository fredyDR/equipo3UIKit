//
//  Validaciones.swift
//  UIKitApp
//
//  Created by Fredy Dominguez on 03/11/22.
//

import Foundation
import UIKit

extension UITextField {
    
    func validEmpty() -> Bool {
        return self.text?.count == 0
    }
    
    func validEmail() -> Bool {
        guard let text = self.text else {
            return false
        }
        return text.contains("@")
    }
    
    func validPass() -> Bool {
        let textTest = NSPredicate(format: "SELF MATCHES %@", "(?s)[^A-Z]*[A-Z].*")
        guard let text = self.text else {
            return false
        }
        return textTest.evaluate(with: text)
    }
}
