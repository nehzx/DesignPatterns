//
//  Factory.swift
//  DesignPatterns
//
//  Created by azhen on 2020/11/30.
//

import UIKit
class Drinking {
    typealias LiquidColor = UIColor
    
    var color: LiquidColor {
        return .clear
    }
    
    
    class func  drinking(name: String) -> Drinking {
        var drinking: Drinking
        
        switch name {
        case "Coke":
            drinking = Coke()
        case "Beer":
            drinking = Beer()
        default:
            drinking = Drinking()
        }
        return drinking
    }
}


class Coke: Drinking {
    override var color: Drinking.LiquidColor {
        return .black
    }
}

class Beer: Drinking {
    override var color: Drinking.LiquidColor {
        return.white
    }
}
