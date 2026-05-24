<div align="center">

# 💙 CareSync

### *Your health, perfectly in sync.*

A modern, feature-rich healthcare platform built with Flutter — connecting **Patients**, **Doctors**, and **Pharmacists** in one seamless app.

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

</div>

---

## 📖 Project Overview

**CareSync** is a cross-platform healthcare management app that brings together the three pillars of a patient's care journey in a single, polished interface:

- **Patients** can find doctors, book appointments, manage prescriptions, track their health with built-in tools like the BMI Calculator, and stay motivated with daily health tips.
- **Doctors** get a clean appointment overview, patient list management, and a schedule view.
- **Pharmacists** can monitor medicine inventory, track stock levels, and receive automatic expiry alerts.

The project is built with **Flutter** for maximum cross-platform reach (iOS, Android, Web, Desktop) and follows a clean, feature-first folder architecture for long-term maintainability.

---

## ✨ Features

### Core Features
| Feature | Description |
|---|---|
| 🔐 **Role-based Auth** | Separate flows for Patient, Doctor, and Pharmacist with animated login |
| 🏠 **Patient Dashboard** | Gradient hero header, stats, quick actions, health tips carousel |
| 👨‍⚕️ **Doctor Portal** | Appointment management, patient list, schedule view |
| 💊 **Pharmacist Hub** | Inventory tracking, low-stock alerts, expiry management |
| 📋 **Prescriptions** | View active & completed prescriptions with status badges |
| 📅 **Appointments** | Schedule management with status indicators (confirmed/pending/completed) |

### New / Bonus Features
| Feature | Description |
|---|---|
| 🌙 **Dark Mode** | Full light/dark theme with persistence via SharedPreferences |
| ⚖️ **BMI Calculator** | Metric & imperial support, visual result card, category feedback |
| 💡 **Health Tips** | Horizontally scrollable tips carousel on the patient home screen |
| 🎨 **Modern Design System** | Indigo-violet gradient palette, card-based UI, smooth animations |

---

## 🖼️ Screenshots


| Login | Patient Home | BMI Calculator |
|---|---|---|
| ![Login](screenshots/login.png) | ![Home](screenshots/home.png) | ![BMI](screenshots/bmi.png) |

| Doctors | Appointments | Doctor Portal |
|---|---|---|
| ![Doctors](screenshots/doctors.png) | ![Appointments](screenshots/appointments.png) | ![Doctor](screenshots/doctor.png) |

| Dark Mode | Pharmacist | Inventory |
|---|---|---|
| ![Dark](screenshots/dark.png) | ![Pharmacist](screenshots/pharmacist.png) | ![Inventory](screenshots/inventory.png) |

---

## 🛠️ Tech Stack

| Category | Technology |
|---|---|
| **Framework** | Flutter 3.x |
| **Language** | Dart 3.x |
| **State Management** | Provider |
| **Navigation** | Flutter Navigator 2.0 |
| **Typography** | Google Fonts — Plus Jakarta Sans |
| **Local Storage** | SharedPreferences, sqflite |
| **HTTP Client** | Dio, http |
| **Calendar** | table_calendar |
| **Date & Time** | intl |

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) **≥ 3.0.0**
- Dart **≥ 3.0.0**
- Android Studio / Xcode (for mobile)
- VS Code or IntelliJ IDEA (recommended)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/caresync.git
   cd caresync
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   # For debug mode on a connected device or emulator
   flutter run

   # For a specific platform
   flutter run -d chrome          # Web
   flutter run -d android         # Android
   flutter run -d ios             # iOS (macOS required)
   ```

4. **Build for production**
   ```bash
   flutter build apk --release       # Android APK
   flutter build ios --release        # iOS (requires signing)
   flutter build web                  # Web
   ```

### Demo Login

The app runs in demo mode — use **any email address** and a **password of 6+ characters** with any role.

| Role | Example Email | Password |
|---|---|---|
| Patient | patient@demo.com | password123 |
| Doctor | doctor@demo.com | password123 |
| Pharmacist | pharma@demo.com | password123 |

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   └── app_constants.dart       # App-wide constants, routes, health tips
│   ├── providers/
│   │   └── theme_provider.dart      # Dark/light mode state management
│   └── theme/
│       └── app_theme.dart           # Full light & dark ThemeData definitions
├── features/
│   ├── auth/
│   │   ├── providers/
│   │   │   └── auth_provider.dart   # Authentication state & logic
│   │   └── screens/
│   │       └── login_screen.dart    # Animated role-based login screen
│   ├── doctor/
│   │   ├── screens/
│   │   │   └── doctor_dashboard_screen.dart
│   │   └── widgets/
│   │       └── appointment_card.dart
│   ├── patient/
│   │   └── screens/
│   │       ├── patient_dashboard_screen.dart  # Home, Doctors, Rx, Appointments tabs
│   │       └── bmi_calculator_screen.dart     # ★ BMI Calculator feature
│   └── pharmacist/
│       └── screens/
│           └── pharmacist_dashboard_screen.dart
└── main.dart                         # App entry point with MultiProvider setup
```

---

## 🔮 Future Improvements

- [ ] **Real Backend Integration** — Connect to a REST API (Node.js / Django / FastAPI)
- [ ] **Firebase Auth** — Replace demo auth with Firebase Authentication
- [ ] **Cloud Firestore** — Sync appointments, prescriptions, and inventory in real-time
- [ ] **Push Notifications** — Appointment reminders, prescription alerts
- [ ] **Telemedicine** — In-app video consultations via WebRTC / Agora
- [ ] **Medicine Reminders** — Local notifications for dosage schedule
- [ ] **Multi-language Support** — i18n for Hindi, Spanish, Arabic, and more
- [ ] **Health Analytics** — Charts and trend graphs for vitals history
- [ ] **Emergency Contacts** — One-tap SOS with location sharing
- [ ] **Accessibility** — Screen reader support and high-contrast mode

---

## 🧪 Running Tests

```bash
# Run all unit and widget tests
flutter test

# Run with verbose output
flutter test --verbose

# Run a specific test file
flutter test test/widget_test.dart
```

---

## 🤝 Contributing

Contributions are welcome! To get started:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add my feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

Please follow the existing code style and add comments to significant code blocks.

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Your Name**
- GitHub: [@yourusername](https://github.com/yourusername)
- LinkedIn: [Your LinkedIn](https://linkedin.com/in/yourprofile)
- Portfolio: [yourwebsite.com](https://yourwebsite.com)

---

<div align="center">

Made with ❤️ and Flutter

⭐ Star this project if you found it useful!

</div>
