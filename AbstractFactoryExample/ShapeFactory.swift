//
//  ShapeFactory.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI


protocol ShapeFactory {
    func createGreenShape() -> ShapeDescription
    func createBlueShape() -> ShapeDescription
    func createRedShape() -> ShapeDescription
}
