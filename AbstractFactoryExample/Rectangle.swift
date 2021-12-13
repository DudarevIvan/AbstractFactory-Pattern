//
//  RectangleFactory.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

class GreenRectangle: ShapeDescription {
    var color: Color = .green
    var title: String = "Green Rectangle"
}

class BlueRectangle: ShapeDescription {
    var color: Color = .blue
    var title: String = "Blue Rectangle"
}

class RedRectangle: ShapeDescription {
    var color: Color = .red
    var title: String = "Red Rectangle"
}
