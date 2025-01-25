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
    /// - Parameter intensity: A `Float` value between `0.0` and `1.0`, where `1.0` is the strongest feedback
    @objc public static func generateMediumFeedback(intensity: Float) {
        UIImpactFeedbackGenerator(style: .medium).impactOccurred(intensity: CGFloat(intensity))
    }
    /// Generates a heavy-intensity haptic feedback
    /// - Parameter intensity: A `Float` value between `0.0` and `1.0`, where `1.0` is the strongest feedback
    @objc public static func generateHeavyFeedback(intensity: Float) {
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred(intensity: CGFloat(intensity))
    }
}
