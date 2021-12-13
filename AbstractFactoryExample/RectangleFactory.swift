//
//  RectangleFactory.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

// Rectangle Factory
class RectangleFactory: ShapeFactory {
    
    func createGreenShape() -> ShapeDescription {
        GreenRectangle()
    }
    
    func createBlueShape() -> ShapeDescription {
        BlueRectangle()
    }
    
    func createRedShape() -> ShapeDescription {
        RedRectangle()
    }
}
