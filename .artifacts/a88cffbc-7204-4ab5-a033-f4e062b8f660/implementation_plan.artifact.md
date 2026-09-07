# Implementation Plan - Real-Time Location Tracking App

This plan outlines the steps to create a Flutter app that tracks the user's location in real-time on a Google Map, draws a polyline of their path, and updates a marker with an info window.

## User Review Required

> [!IMPORTANT]
> **Google Maps API Key**: You must provide a valid Google Maps API Key for both Android and iOS. I will use placeholders (`YOUR_API_KEY`) which you will need to replace.
> **Location Permissions**: The app will request location permissions at runtime. Ensure you test on a physical device or a simulator with location services enabled.

## Proposed Changes

### Configuration

#### [MODIFY] [AndroidManifest.xml](file:///D:/Programming_Learning/OSTAD LEARNING/Assignments/map_app/android/app/src/main/AndroidManifest.xml)
- Add `ACCESS_FINE_LOCATION` and `ACCESS_COARSE_LOCATION` permissions.
- Add the Google Maps API key meta-data.

#### [MODIFY] [Info.plist](file:///D:/Programming_Learning/OSTAD LEARNING/Assignments/map_app/ios/Runner/Info.plist)
- Add location usage descriptions (`NSLocationWhenInUseUsageDescription` and `NSLocationAlwaysUsageDescription`).

#### [MODIFY] [AppDelegate.swift](file:///D:/Programming_Learning/OSTAD LEARNING/Assignments/map_app/ios/Runner/AppDelegate.swift)
- Import `GoogleMaps` and initialize the API key.

#### [MODIFY] [build.gradle.kts](file:///D:/Programming_Learning/OSTAD LEARNING/Assignments/map_app/android/app/build.gradle.kts)
- Ensure `minSdk` is at least 21 (required by `google_maps_flutter`).

---

### Implementation

#### [NEW] [map_screen.dart](file:///D:/Programming_Learning/OSTAD LEARNING/Assignments/map_app/lib/map_screen.dart)
- Create a `StatefulWidget` to host the `GoogleMap`.
- Implement `Geolocator` to fetch location every 10 seconds using a `Timer` or `PositionStream`.
- Manage state for:
    - Current marker position.
    - Polyline points list.
    - Map controller for animations.
- Implement the "Info Window" with Latitude and Longitude.

#### [MODIFY] [main.dart](file:///D:/Programming_Learning/OSTAD LEARNING/Assignments/map_app/lib/main.dart)
- Replace the default counter app with the `MapScreen`.

## Verification Plan

### Automated Tests
- I will verify the code compiles by running `flutter analyze`.

### Manual Verification
- **Map Animation**: Verify the map centers on the user's location upon startup/first location fetch.
- **Location Updates**: Verify the marker moves and the polyline grows every 10 seconds.
- **Info Window**: Tap the marker to verify the title "My current location" and the correct Lat/Lng snippet.
