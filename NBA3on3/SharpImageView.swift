//
//  SharpImageView.swift
//  NBA3on3
//
//  Created by apple on 2021/8/6.
//

import UIKit

class SharpImageView: UIImageView {


    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: bounds.width, y: 0))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height * 0.9))
        path.addLine(to: CGPoint(x: 0, y: bounds.height))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
    }

}
