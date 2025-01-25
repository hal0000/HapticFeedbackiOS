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

    // 🔹 Call Swift functions correctly
    void GenerateMediumFeedback(float intensity) {
        [HapticFeedback generateMediumFeedbackWithIntensity:intensity];
    }

    void GenerateHeavyFeedback(float intensity) {
        [HapticFeedback generateHeavyFeedbackWithIntensity:intensity];
    }

#ifdef __cplusplus
}
#endif
