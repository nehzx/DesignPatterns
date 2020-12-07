//
//  FactoryMethod.swift
//  DesignPatterns
//
//  Created by azhen on 2020/12/2.
//

import Foundation

protocol Product {}

class ConcreteProductA: Product { }
class ConcreteProductB: Product { }

class Client {
    
}

class FactoryMethod {
    func createProduct() -> Product? {
        return nil
    }
    
    func createProduct(type: Int) -> Product? {
        if type == 0 {
            return  ConcteteFactoryA().createProduct()
        }else{
            return ConcteteFactoryB().createProduct()
        }
    }
}

class ConcteteFactoryA: FactoryMethod {
    
    override func createProduct() -> Product? {
        return ConcreteProductA()
    }
}

class ConcteteFactoryB: FactoryMethod {
    override func createProduct() -> Product? {
        return ConcreteProductB()
    }
}
