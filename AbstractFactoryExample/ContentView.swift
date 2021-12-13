//
//  ContentView.swift
//  AbstractFactoryExample
//
//  Created by Ivan Dudarev on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = .init()
    @State private var shapeType: ShapeType = .circle
    
    var body: some View {
        VStack {
            Button {
                viewModel.circleFactory()
                shapeType = .circle
            } label: {
                Text("Circle Factory")
            }
                .padding()
            Button {
                viewModel.rectangleFactory()
                shapeType = .rectangle
            } label: {
                Text("Rectangle Factory")
            }
                .padding()
            Spacer(minLength: 0)
            ForEach(shapeType == .circle ? viewModel.circle : viewModel.rectangle, id: \.self.title) { shape in
                ZStack {
                    if shapeType == .circle {
                        Circle()
                            .stroke(lineWidth: 2)
                    } else  {
                        Rectangle()
                            .stroke(lineWidth: 2)
                    }
                    Text(shape.title)
                }
                .foregroundColor(shape.color)
                .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


enum ShapeType {
    case circle
    case rectangle
}


struct CircleShape: View {
    let color: Color
    let title: String
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 2)
            Text(title)
        }
            .foregroundColor(color)
            .frame(width: 80, height: 80, alignment: .center)
    }
}

struct RectangleShape: View {
    let color: Color
    let title: String
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(lineWidth: 2)
            Text(title)
        }
            .foregroundColor(color)
            .frame(width: 100, height: 40, alignment: .center)
    }
}
