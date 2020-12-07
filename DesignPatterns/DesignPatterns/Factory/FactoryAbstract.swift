//
//  FactoryAbstract.swift
//  DesignPatterns
//
//  Created by azhen on 2020/12/2.
//

import Foundation

protocol ProductA {}
protocol ProductB {}

class screwA: ProductA {}
class screwB: ProductB {}

class nutA: ProductA {}
class nutB: ProductB {}

class FactoryAbstract {
    func createProductA() -> ProductA? { return nil }
    func createProductB() -> ProductB? { return nil }
    func createProductA( _ type: Int) -> ProductA? {
        if type == 0 {
            return ScrewFactoryA().createProductA()
        }else{
            return nutFactoryB().createProductA()
        }
    }
    func createProductB(_ type: Int) -> ProductB? {
        if type == 0 {
            return ScrewFactoryA().createProductB()
        }else {
            return nutFactoryB().createProductB()
        }
    }
}

class ScrewFactoryA: FactoryAbstract {
    override func createProductA() -> ProductA? {
        return screwA()
    }
    
    override func createProductB() -> ProductB? {
        return screwB()
    }
}
class nutFactoryB: FactoryAbstract {
    override func createProductA() -> ProductA? {
        return nutA()
    }
    
    override func createProductB() -> ProductB? {
        return nutB()
    }
}
