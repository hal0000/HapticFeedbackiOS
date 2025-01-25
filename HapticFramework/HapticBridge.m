//
//  HapticBridge.m
//  HapticFramework
//
//  Created by Halil Mentes on 18.01.2025.
//

#import <Foundation/Foundation.h>
#import "HapticFramework-Swift.h"

#ifdef __cplusplus
extern "C" {
#endif

    // ✅ Corrected method calls with proper Objective-C syntax
    void GenerateMediumFeedback(float intensity) {
        [HapticFeedback generateMediumFeedbackWith:intensity]; // ✅ Uses correct selector
    }

    void GenerateHeavyFeedback(float intensity) {
        [HapticFeedback generateHeavyFeedbackWith:intensity]; // ✅ Uses correct selector
    }

#ifdef __cplusplus
}
#endif
