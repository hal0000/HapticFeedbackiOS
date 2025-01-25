//
//  HapticFeedback.swift
//  HapticFramework
//
//  Created by Halil Mentes on 18.01.2025.
//

import Foundation
import UIKit

@objc public class HapticFeedback: NSObject {
    
    /// Generates a medium-intensity haptic feedback
    /// - Parameter intensity: A `Float` value between `0.0` and `1.0`
    @objc public static func generateMediumFeedback(with intensity: Float) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        
        if #available(iOS 17.0, *) {
            generator.impactOccurred(intensity: CGFloat(intensity)) // ✅ Uses iOS 17 intensity API
        } else {
            generator.impactOccurred() // ✅ Fallback for iOS 10-16
        }
    }
    
    /// Generates a heavy-intensity haptic feedback
    /// - Parameter intensity: A `Float` value between `0.0` and `1.0`
    @objc public static func generateHeavyFeedback(with intensity: Float) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        
        if #available(iOS 17.0, *) {
            generator.impactOccurred(intensity: CGFloat(intensity)) // ✅ Uses iOS 17 intensity API
        } else {
            generator.impactOccurred() // ✅ Fallback for iOS 10-16
        }
    }
}
