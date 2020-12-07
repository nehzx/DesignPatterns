//
//  ViewController.swift
//  DesignPatterns
//
//  Created by azhen on 2020/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let coke = Drinking.drinking(name: "Coke")
//        print(NSStringFromClass(type(of: coke)))
//        let beer = Drinking.drinking(name: "Beer")
//        print(NSStringFromClass(type(of: beer)))
//        
//        
//        let shape = ShapeFactory.getShape("Circle")
//
//        shape.draw()
        let builder = Builder().bigMaxCombo()
        print(builder.detailDesc)
    }
    
}

