print("Hello from Swift on \(_runtimePlatform())!")

func _runtimePlatform() -> String {
    #if os(Windows)
    #if arch(arm64)
    return "Windows arm64"
    #else
    return "Windows x86_64"
    #endif
    #else
    return "non-Windows"
    #endif
}
