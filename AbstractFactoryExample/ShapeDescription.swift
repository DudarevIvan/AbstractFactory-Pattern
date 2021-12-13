//
//  Shape.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

protocol ShapeDescription {
    var color: Color { get }
    var title: String { get }
}
