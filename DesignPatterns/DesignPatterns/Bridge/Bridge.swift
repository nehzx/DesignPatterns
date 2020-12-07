//
//  Bridge.swift
//  DesignPatterns
//
//  Created by azhen on 2020/12/4.
//

import Foundation

protocol Implementation {
    func turnOn(_ on: Bool) -> String
}

class Bridge {
    var target: Implementation
    init(_ target: Implementation) {
        self.target = target
    }
    
    func turnOn(_ on: Bool) -> String {
        let str = target.turnOn(on)
        return String(format: "%s", str)
    }
}


class TV: Implementation {
    func turnOn(_ on: Bool) -> String {
        if on {
            return "打开"
        }
     return "关闭"
    }
}

class Lamp: Implementation {
    func turnOn(_ on: Bool) -> String {
        if on {
            return "打开"
        }
     return "关闭"
    }
}
