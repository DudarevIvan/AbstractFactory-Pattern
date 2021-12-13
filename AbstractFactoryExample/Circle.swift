//
//  CircleFactory.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

class GreenCircle: ShapeDescription {
    var color: Color = .green
    var title: String = "Green Circle"
}

class BlueCircle: ShapeDescription {
    var color: Color = .blue
    var title: String = "Blue Circle"
}

class RedCircle: ShapeDescription {
    var color: Color = .red
    var title: String = "Red Circle"
}
