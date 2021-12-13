//
//  ViewModel.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var circle: Array<ShapeDescription> = .init()
    @Published var rectangle: Array<ShapeDescription> = .init()
    
    func circleFactory() {
        circle = []
        rectangle = []
        circle.append(CircleFactory().createBlueShape())
        circle.append(CircleFactory().createRedShape())
        circle.append(CircleFactory().createGreenShape())
    }
    
    func rectangleFactory() {
        circle = []
        rectangle = []
        rectangle.append(RectangleFactory().createBlueShape())
        rectangle.append(RectangleFactory().createRedShape())
        rectangle.append(RectangleFactory().createGreenShape())
    }
}
