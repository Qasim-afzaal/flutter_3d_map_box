# **Flutter 3D Mapbox **

A Flutter application using clean architecture and Bloc for state management to integrate Mapbox functionalities such as fetching polylines, tracking user location, and searching locations.

---

## **Features**
- Fetch and display polylines from a remote data source.
- Track the user's current location.
- Search for specific locations using a query.
- Uses **Clean Architecture** principles for better scalability and maintainability.
- Implements **Bloc** for predictable and testable state management.
- Modular project structure for **Domain**, **Data**, and **Presentation** layers.

---

## **Project Structure**
```plaintext
lib/
├── core/
│   ├── error/
│   │   ├── exceptions.dart
│   │   ├── failures.dart
│   ├── usecases/
│   │   ├── usecase.dart
│   ├── constants/
│       ├── constants.dart
├── features/
│   ├── map/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   ├── map_remote_data_source.dart
│   │   │   ├── repositories/
│   │   │       ├── map_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   ├── location.dart
│   │   │   ├── repositories/
│   │   │   │   ├── map_repository.dart
│   │   │   ├── usecases/
│   │   │       ├── get_polylines.dart
│   │   │       ├── get_user_location.dart
│   │   │       ├── search_location.dart
│   │   ├── presentation/
│   │       ├── bloc/
│   │       │   ├── map_bloc.dart
│   │       │   ├── map_event.dart
│   │       │   ├── map_state.dart
│   │       ├── pages/
│   │           ├── map_page.dart
```

---

## **Installation**

### **Prerequisites**
- Flutter SDK (≥ 3.0.0)
- Dart SDK
- Mapbox Access Token ([Sign up and generate one](https://account.mapbox.com/auth/signup/))

### **Steps**
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter-mapbox](https://github.com/Qasim-afzaal/flutter_3d_map_box.git
   cd flutter-mapbox
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Add your Mapbox access token in `lib/core/constants/constants.dart`:
   ```dart
   static const String mapboxAccessToken = 'your_mapbox_access_token';
   static const String mapboxStyleUrl = 'your_mapbox_style_url';
   ```
4. Run the app:
   ```bash
   flutter run
   ```

---

## **Usage**
### Fetch Polylines
Tap the **map icon** to fetch polylines and display them in the UI.

### Track User Location
User location will automatically be fetched when the respective button (or functionality) is triggered.

### Search Location
Enter a query in the search field to fetch details about a specific location.

---

## **Dependencies**
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) – Bloc for state management.
- [equatable](https://pub.dev/packages/equatable) – Simplifies value comparison.
- [dartz](https://pub.dev/packages/dartz) – Functional programming support.

---

## **Contributing**
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add new feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

---

## **License**
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## **Contact**
For any queries or feedback, feel free to reach out:
- **Author**: Muhammad Qasim
- **Email**: qasim.afzaal432@gmail.com
- **GitHub**: https://github.com/Qasim-afzaal
