//
//  FloatinPointExtension.swift
//
//
//  Created by Chanho Lee on 3/27/25.
//
public extension FloatingPoint {
    var toDouble: Double {
        return self as? Double ?? Double(self as! Float)
    }
}
