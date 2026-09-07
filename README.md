# Real-Time Location Tracker 📍

A Flutter application that tracks and visualizes the user's movement in real-time on a map. Built using **FlutterMap (OpenStreetMap)** to ensure it works without the need for a Google Maps API key.

![App Preview](https://raw.githubusercontent.com/Mdyeasinkhan4/map_app/b34d9f4c638be7e334f778505c2b3aad7e0d9455/web_preview_image.png)

## 🚀 Features

- **Automatic Map Animation**: The map smoothly pans and centers on the user's current location as they move.
- **Real-Time Tracking**: Automatically fetches the user's location every **10 seconds**.
- **Polyline Path**: Draws a blue line (polyline) connecting the previous points to visualize the entire traveled path.
- **Location Details**: Custom markers that, when tapped, display an info dialog showing the precise **Latitude** and **Longitude**.
- **No API Key Required**: Uses OpenStreetMap (OSM) tiles, making it easy to run and test immediately.

## 🛠️ Technology Stack

- **Flutter**: UI Framework.
- **flutter_map**: For displaying map tiles (OSM).
- **geolocator**: For high-accuracy real-time location fetching.
- **latlong2**: For handling geographic coordinates.

## 📦 Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Mdyeasinkhan4/map_app.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd map_app
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the app**:
   ```bash
   flutter run
   ```

## 📱 Permissions

The app requires the following permissions to function:
- **Android**: `ACCESS_FINE_LOCATION` and `ACCESS_COARSE_LOCATION`.
- **iOS**: `NSLocationWhenInUseUsageDescription` and `NSLocationAlwaysUsageDescription`.

---
Developed with ❤️ by [Yeasin Khan](https://github.com/Mdyeasinkhan4)
