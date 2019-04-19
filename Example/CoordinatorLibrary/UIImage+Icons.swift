//
//  UIImage+Icons.swift
//  CoordinatorLibrary_Example
//
//  Created by Kauna Mohammed on 19/04/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

extension UIImage {
  
  static var userWall: UIImage {
    let size = CGSize(width: 20, height: 20)
    let height = size.height * 0.9
    let width = size.width * 0.9
    
    let renderer = UIGraphicsImageRenderer(size: size)
    
    let image = renderer.image { (context) in
      let path = context.cgContext
      path.setLineWidth(2)
      
      let roundedPath = UIBezierPath(roundedRect: CGRect(x: 1,
                                                         y: 1,
                                                         width: width,
                                                         height: height),
                                     cornerRadius: 2)
      
      path.addPath(roundedPath.cgPath)
      
      path.drawPath(using: .stroke)
    }
    
    return image
    
  }
  
  static var homeImage: UIImage {
    let size = CGSize(width: 20, height: 20)
    let height = size.height
    let width = size.width
    let halfHeight = height / 2
    let halfWidth = width / 2
    
    let renderer = UIGraphicsImageRenderer(size: size)
    
    let image = renderer.image { (context) in
      let path = context.cgContext
      path.setStrokeColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
      path.setLineWidth(2)
      path.move(to: CGPoint(x: halfWidth, y: 1))
      path.addLine(to: CGPoint(x: 1, y: halfHeight))
      path.addLine(to: CGPoint(x: 1, y: height))
      path.addLine(to: CGPoint(x: round(halfWidth - 3), y: height - 1))
      
      let doorHeight = height * 0.3
      path.addLine(to: CGPoint(x: round(halfWidth - 3), y: height - doorHeight))
      path.addLine(to: CGPoint(x: round(halfWidth + 3), y: height - doorHeight))
      path.addLine(to: CGPoint(x: round(halfWidth + 3), y: height - 1))
      path.addLine(to: CGPoint(x: width - 1, y: height - 1))
      path.addLine(to: CGPoint(x: width - 1, y: height - 1))
      path.addLine(to: CGPoint(x: width - 1, y: halfHeight))
      path.closePath()
      path.drawPath(using: .stroke)
    }
    
    return image
  }
  
  static var searchImage: UIImage {
    let size = CGSize(width: 20, height: 20)
    let renderer = UIGraphicsImageRenderer(size: size)
    
    let image = renderer.image { (context) in
      context.cgContext.setStrokeColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
      context.cgContext.setLineWidth(2)
      context.cgContext.move(to: .zero)
      let scaleFactor = size.height * 0.7
      let path = UIBezierPath(ovalIn: CGRect(x: 1,
                                             y: 1,
                                             width: scaleFactor,
                                             height: scaleFactor))
      
      context.cgContext.addPath(path.cgPath)
      
      let pathBounds = size.width / 1.5
      let lineHeightInset: CGFloat = size.height * 0.1
      
      context.cgContext.move(to: CGPoint(x: pathBounds,
                                         y: pathBounds))
      
      context.cgContext.addLine(to: CGPoint(x: size.height - lineHeightInset,
                                            y: size.height - lineHeightInset))
      
      context.cgContext.drawPath(using: .stroke)
      
    }
    
    return image
  }
  
}
