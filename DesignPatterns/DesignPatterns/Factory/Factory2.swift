//
//  Factory2.swift
//  DesignPatterns
//
//  Created by azhen on 2020/12/2.
//

import Foundation

protocol Shape {
    func draw()
}

class Circle: Shape {
    func draw() {
        print(Circle.self)
    }
}

class Square: Shape {
    func draw() {
        print(Square.self)
    }
}


class ShapeFactory {
    class func getShape(_ name: String) -> Shape {
        switch name {
        case "Circle":
            return Circle()
        default:
            return Square()
        }
    }
}
