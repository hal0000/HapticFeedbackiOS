This repository provides a custom iOS haptic feedback framework, designed for seamless and efficient integration in games and applications. It enables Unity and native iOS developers to trigger precise haptic feedback on iOS devices using Apple’s UIImpactFeedbackGenerator API.

🎯 Features
    ✅ Supports Medium & Heavy Haptic Feedback with Adjustable Intensity
    ✅ Optimized for Game and App Integration
    ✅ Lightweight & High-Performance Implementation
    ✅ Works Seamlessly with Objective-C and Swift
    ✅ Easy-to-use C# Bindings for Unity
    ✅ Framework-based Integration (HapticFramework.framework)
📌 Usage (Unity & iOS Integration)
    ✅ Copy HapticFramework.framework to Assets/Plugins/iOS/ in your Unity project.
    ✅ Ensure the framework is set to iOS in the Unity Inspector.
To trigger haptic feedback in Unity, use the following C# wrapper (HapticManager.cs):
// --------------------------------------------------------------------------------------------------------------------
// Copyright (C) 2024 Halil Mentes
// All rights reserved.
// --------------------------------------------------------------------------------------------------------------------

using UnityEngine;
#if UNITY_IOS && !UNITY_EDITOR
using System.Runtime.InteropServices;
#endif

public static class HapticManager
{
    #if UNITY_IOS && !UNITY_EDITOR
    [DllImport("__Internal")]
    private static extern void GenerateMediumFeedback(float intensity);
    
    [DllImport("__Internal")]
    private static extern void GenerateHeavyFeedback(float intensity);
    #endif

    /// <summary>
    /// Triggers a medium-intensity haptic feedback.
    /// Intensity should be between 0.0 (weak) and 1.0 (strong).
    /// </summary>
    public static void TriggerMedium(float intensity = 1.0f)
    {
        #if UNITY_IOS && !UNITY_EDITOR
        GenerateMediumFeedback(intensity);
        #else
        Debug.Log("Haptic (Medium) not supported on this platform");
        #endif
    }

    /// <summary>
    /// Triggers a heavy-intensity haptic feedback.
    /// Intensity should be between 0.0 (weak) and 1.0 (strong).
    /// </summary>
    public static void TriggerHeavy(float intensity = 1.0f)
    {
        #if UNITY_IOS && !UNITY_EDITOR
        GenerateHeavyFeedback(intensity);
        #else
        Debug.Log("Haptic (Heavy) not supported on this platform");
        #endif
    }
}

This HapticFeedbackiOS framework provides an easy way to use haptic feedback in mobile games and applications with minimal overhead.
It’s lightweight, efficient, and fully optimized for performance.

💡 Let me know if you need further modifications! 🚀
