//
//  Power.swift
//  MVVMAndFreeforminput
//
//  Created by kim heejun on 2/21/25.
//

import Foundation

@Observable
class PowerViewModel {
    
    // MARK: Stored properties
    
    // Holds whatever the user has typed in the text fields
    var providedBase: String
    var providedExponent: String
    
    // Holds an appropriate error message, if there was a
    // problem with input provided by the user
    var recoverySuggestion: String = ""
    
    //MARK: Computed properties
    //Holds the evaluated power, when the input provided is valid
    var power: Power? {
        guard let base = Double(providedBase), base > 0 else {
            recoverySuggestion = "Please provide a positive value for the base of the power."
            return nil
        }
        
        guard let exponent = Int(providedExponent), exponent >= 1 else {
            recoverySuggestion = "Please provide an integer value of 1 or greater for the exponent."
            return nil
        }
        recoverySuggestion = ""
        return Power(base: base, exponent: exponent)
    }
    
    
    
    
    
    
    //MARK: Initializer(s)
    init(providedBase: String = "", providedExponent: String = "", recoverySuggestion: String = "") {
        self.providedBase = providedBase
        self.providedExponent = providedExponent
        self.recoverySuggestion = recoverySuggestion
        
    }
}
