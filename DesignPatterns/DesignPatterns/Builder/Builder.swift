//
//  Builder.swift
//  DesignPatterns
//
//  Created by azhen on 2020/12/3.
//

import Foundation

protocol Material {
    var name:String{get}
    var brand:String{get}
    var model:String{get}
    var price:Double{get}
    var desc:String{get}
}

protocol Imenu {
    var totalPrice:String {get}
    var detailDesc:String{get}

    func addpend(hamburg: Material) -> Imenu
    func addpend(coke: Material) -> Imenu
    func addpend(frenchFries: Material) -> Imenu
}

class Combo: Imenu {
    private var name:String
    private var listing: [Material]
    init(_ name:String) {
        self.name = name
        listing = []
    }
    
    var totalPrice: String {
        let price = listing.map{ $0.price}.reduce(0, +)
        return String(format: "%.2f", price)
    }
    
    func addpend(hamburg: Material) -> Imenu  {
        listing.append(hamburg)
        return self
    }
    
    func addpend(coke: Material) -> Imenu {
        listing.append(coke)
        return self
    }
    
    func addpend(frenchFries: Material) -> Imenu {
        listing.append(frenchFries)
        return self
    }
    var detailDesc: String  {
        """
        套餐名称：\(name)
        套餐价格：\(totalPrice)
        套餐清单：
        \(listing.map{$0.desc}.joined(separator: "\n"))
        """
    }
}

class Builder {
    
    func bigMaxCombo() -> Imenu {
        Combo.init("巨无霸套餐")
            .addpend(hamburg: HamburgA())
            .addpend(coke: CokeA())
            .addpend(frenchFries: FrenchFriesA())
    }
}

class HamburgA: Material {
    var name: String {
        return "巨无霸汉堡"
    }
    
    var brand: String {
        return "麦当劳"
    }
    
    var model: String {
        return "一级"
    }
    
    var price: Double{
        return 15.5
    }
    
    var desc: String {
        return "名字：\(name) 品牌：\(brand) 等级：\(model) 价格：\(price)"
    }
}

class HamburgB: Material {
    var name: String {
        return "香辣鸡腿堡"
    }
    
    var brand: String {
        return "麦当劳"
    }
    
    var model: String {
        return "一级"
    }
    
    var price: Double{
        return 13.5
    }
    
    var desc: String {
        return "名字：\(name) 品牌：\(brand) 等级：\(model) 价格：\(price)"
    }
}

class CokeA: Material {
    var name: String {
        return "无糖可乐"
    }
    
    var brand: String {
        return "百事可乐"
    }
    
    var model: String {
        return "一级"
    }
    
    var price: Double{
        return 8
    }
    
    var desc: String {
        return "名字：\(name) 品牌：\(brand) 等级：\(model) 价格：\(price)"
    }
}
class CokeB: Material {
    var name: String {
        return "普通可乐"
    }
    
    var brand: String {
        return "百事可乐"
    }
    
    var model: String {
        return "一级"
    }
    
    var price: Double{
        return 5
    }
    
    var desc: String {
        return "名字：\(name) 品牌：\(brand) 等级：\(model) 价格：\(price)"
    }
}

class FrenchFriesA: Material {
    var name: String {
        return "薯条"
    }
    
    var brand: String {
        return "麦当劳"
    }
    
    var model: String {
        return "中薯"
    }
    
    var price: Double{
        return 5
    }
    
    var desc: String {
        return "名字：\(name) 品牌：\(brand) 等级：\(model) 价格：\(price)"
    }
}

class FrenchFriesB: Material {
    var name: String {
        return "薯格"
    }
    
    var brand: String {
        return "麦当劳"
    }
    
    var model: String {
        return "大薯"
    }
    
    var price: Double{
        return 5
    }
    
    var desc: String {
        return "名字：\(name) 品牌：\(brand) 等级：\(model) 价格：\(price)"
    }
}
