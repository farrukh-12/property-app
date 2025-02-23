# Blumo Property App

Blumo Property App is a real estate application built using **Flutter** to facilitate seamless property listings, buying, and renting experiences. The app offers a user-friendly interface, powerful search functionality, and integration with secure payment gateways.

## Features

- 🏡 **Property Listings** – Browse, add, and manage property listings.
- 🔍 **Advanced Search & Filters** – Find properties based on location, price, type, and other filters.
- 🏦 **Secure Payments** – Integrated with **Stripe** for seamless transactions.
- 🗺 **Interactive Map** – View properties on a dynamic map using Google Maps API.
- 📸 **Image Gallery** – Upload and view high-quality property images.
- 📩 **In-app Messaging** – Communicate with property owners or buyers.
- 📱 **Cross-platform** – Works on both Android & iOS.

## Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Firebase / Node.js 
- **Database**: Firestore / PostgreSQL
- **Payments**: Stripe API
- **Maps**: Google Maps API
- **State Management**: Provider / Riverpod 

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/bashirfahad/blumo-property-app.git
   cd blumo-property-app
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```
   *(Ensure you have an emulator or a connected device.)*

## Configuration

- **Google Maps API**: Add your Google Maps API key in `android/app/src/main/AndroidManifest.xml` and `ios/Runner/AppDelegate.swift`.
- **Firebase Setup**: Download the `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) and place them in the respective directories.
- **Stripe API Keys**: Set your Stripe keys in `.env` file or Firebase functions (if applicable).

## Screenshots
![Frame 6](https://github.com/user-attachments/assets/6bac0e72-7155-4ca6-a84c-dafce6bd1761)
<img width="290" alt="Screenshot 2025-02-07 at 2 28 14 AM" src="https://github.com/user-attachments/assets/2b0144f0-7245-4398-9a59-b5855dd55e74" />
<img width="287" alt="Screenshot 2025-02-07 at 2 27 38 AM" src="https://github.com/user-attachments/assets/d4fe5e91-3918-4295-845b-17897f77f34b" />
<img width="289" alt="Screenshot 2025-02-07 at 2 28 35 AM" src="https://github.com/user-attachments/assets/be3e8e51-d873-4c89-bb53-097b90a48c46" />



## Contribution

Contributions are welcome! Follow these steps to contribute:
1. Fork the repository.
2. Create a new branch (`feature-branch`).
3. Commit your changes (`git commit -m "Added new feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a **Pull Request**.

## License

This project is **open-source** under the **MIT License**.

## Contact

- **Author**: Farrukh Bashir
- **Email**: farrukhbashir102@gmail.com


