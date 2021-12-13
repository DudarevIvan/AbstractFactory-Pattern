//
//  CircleFactory.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

// Circle Factory
class CircleFactory: ShapeFactory {
    
    func createGreenShape() -> ShapeDescription {
        GreenCircle()
    }
    
    func createBlueShape() -> ShapeDescription {
        BlueCircle()
    }
    
    func createRedShape() -> ShapeDescription {
        RedCircle()
    }    
}
