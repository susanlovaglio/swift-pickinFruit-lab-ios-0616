//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {

    func allowEntryWithPassword(_ password:[Int]) -> Bool
}

class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

extension BankVault: ProvideAccess{
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        
        var oddDigitCount = 0
        
        if password.isEmpty || password.count > 10{
            return false
        }else{
            
            for (index, digit) in password.enumerated(){
                
                
                if index == 0{

                    if digit % 2 != 0 {

                        oddDigitCount += 1
                    }
                    
                }else if index % 2 == 0{
                    
                    
                    if digit % 2 != 0 {

                        oddDigitCount += 1
                    }
                }
            }
        }
        
        return oddDigitCount == 0
    }
}



