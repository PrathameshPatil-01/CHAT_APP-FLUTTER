# Flutter Chat App

A feature-rich chat application built using Flutter with Firebase integration and utilizes Riverpod for state management. This app allows users to authenticate with their mobile number, enabling them to chat with their contacts, share emojis, GIFs, images, videos, and audio recordings. It also supports group chat functionality, along with both person-to-person and group video calling. Users can set profile pictures, view online/offline status, and see real-time message timestamps. Additionally, users can add statuses, similar to WhatsApp.

---

## Live Demo

<img src="screenshots/Chat_App.gif" alt="Live Demo">

---

## Table of Contents

- [Flutter Chat App](#flutter-chat-app)
  - [Live Demo](#live-demo)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Screenshots](#screenshots)
  - [Repository Structure](#repository-structure)
  - [Planned Enhancements](#planned-enhancements)
  - [Tech Stack](#tech-stack)
  - [Installation](#installation)
  - [Contributions](#contributions)

---

## Features

- **Firebase Authentication:** Secure and efficient mobile number authentication to onboard users.
- **Firebase Storage:** Store and retrieve images, videos, and audio files.
- **Firestore Database:** Real-time chat functionality and user data storage.
- **Contact Import:** Connect with your mobile contacts who are also using the app.
- **Emojis & GIFs:** Express yourself with a wide range of emojis and share GIFs in your chats.
- **Image & Video Sharing:** Share images and videos with ease.
- **Audio Recordings:** Record and send audio messages in chats.
- **Group Chat:** Create and join group chats with multiple participants.
- **Video Calling:** Engage in person-to-person or group video calls.
- **Profile Pictures:** Set your profile picture for others to see.
- **Online/Offline Status:** Know when your contacts are online or offline.
- **Real-Time Message Status:** See when messages are sent or received in real-time.
- **Status Updates:** Share your current status, just like WhatsApp.
- **Dark & Light Themes:** Choose between dark and light themes for a personalized experience.
- **Search Functionality:** Easily find and start conversations with your contacts.

---

## Screenshots

<div align = "Center">
<img src="screenshots/logo.png" alt="Screen" width="300" height="600">
</div>

| ![Screen](screenshots/l1.png) | ![Screen](screenshots/l2.png) | ![Screen](screenshots/l3.png) |
| :---------------------------: | :---------------------------: | :---------------------------: |
|       **Login Screen**        |       **OTP Screen**        |       **Create Profile**        |
| ![Screen](screenshots/d1.png) | ![Screen](screenshots/d2.png) | ![Screen](screenshots/d3.png) |
---

| ![Screen](screenshots/l4.png) | ![Screen](screenshots/l5.png) | ![Screen](screenshots/l6.png) |
| :---------------------------: | :---------------------------: | :---------------------------: |
|       **Home Screen**        |       **Search Screen**        |       **Pop Menus**        |
| ![Screen](screenshots/d4.png) | ![Screen](screenshots/d5.png) | ![Screen](screenshots/d6.png) |
---

| ![Screen](screenshots/l7.png) | ![Screen](screenshots/l8.png) | ![Screen](screenshots/l9.png) |
| :---------------------------: | :---------------------------: | :---------------------------: |
|       **Select Contacts**        |       **Create Group**        |       **Settings Screen**  |
| ![Screen](screenshots/d7.png) | ![Screen](screenshots/d8.png) | ![Screen](screenshots/d9.png) |
---

| ![Screen](screenshots/l10.png) | ![Screen](screenshots/l11.png) | ![Screen](screenshots/l12.png) |
| :----------------------------: | :----------------------------: | :----------------------------: |
|        **Status Screen**        |        **Add Status**        |        **Status Updated**        |
| ![Screen](screenshots/d10.png) | ![Screen](screenshots/d11.png) | ![Screen](screenshots/d12.png) |
---

| ![Screen](screenshots/l13.png) | ![Screen](screenshots/l14.png) | ![Screen](screenshots/l15.png) |
| :----------------------------: | :----------------------------: | :----------------------------: |
|        **Chat Screen**        |        **Creating Group**        |        **Group Created**      |
| ![Screen](screenshots/d13.png) | ![Screen](screenshots/d14.png) | ![Screen](screenshots/d15.png) |
---

| ![Screen](screenshots/vc1.png) | ![Screen](screenshots/vc2.png) | ![Screen](screenshots/vc3.png) |
| :----------------------------: | :----------------------------: | :----------------------------: |
|        **Video Call Screen**   |       **Video Call Screen**    |        **Video Call Screen**   |

---

## Repository Structure

- **common**
  - _enums_
  - _providers_
  - _repositories_
  - _utils_
  - _widgets_
- **config**
- **features**
  - _auth_
    - _controller_
    - _repository_
    - _screens_
  - _call_
    - _controller_
    - _repository_
    - _screens_
  - _chat_
    - _controller_
    - _repositories_
    - _screens_
    - _widgets_
  - _group_
    - _controller_
    - _repository_
    - _screens_
    - _widgets_
  - _landing_
    - _screens_
  - _search_
    - _screen_
  - _select_contacts_
    - _controller_
    - _repository_
    - _screens_
  - _settings_
    - _screen_
  - _status_
    - _controller_
    - _repository_
    - _screens_
- **models**

---

## Planned Enhancements

This app serves as a foundation for further development, with future updates expected to introduce additional features, optimizations, and UI/UX improvements. Planned enhancements include:

- **Message Reactions**: Users will have the ability to react to messages with emojis.

- **Voice Messages**: Implementation of voice messaging capabilities for added versatility in communication.

- **Notification Integration**: Push notifications will be integrated to alert users of new messages or call requests.

- **Message Editing/Deleting**: Users will have the ability to edit or delete messages within a specified timeframe.

- **User Authentication Enhancements**: Implementation of additional authentication methods for enhanced security.

- **Multi-Language Support**: Localization features will be added to accommodate users from different linguistic backgrounds.

---

## Tech Stack

The app leverages a variety of technologies to provide a rich and interactive user experience:

- **Flutter**: The cross-platform framework for building mobile applications.

- **Firebase**: Firebase Authentication, Firebase Storage, and Firestore for user management, storage, and real-time database functionality.

- **Agora Video Calling**: Integrated for high-quality video calls, supporting both one-on-one and group video calling.

- **Riverpod**: A state management library for Flutter, ensuring a well-structured and efficient app architecture.

---

## Installation

1. **Clone the Repository**:

   ```
   git clone https://github.com/PrathameshPatil-01/CHAT_APP-FLUTTER.git
   ```

2. **Install Dependencies**:

   ```
   flutter pub get
   ```

3. **Configure Firebase**:

   - Create a new project on the [Firebase Console](https://console.firebase.google.com/).
   - Follow the instructions to set up Firebase in your Flutter project by adding the necessary configuration files.
   - Run the commands:
     - npm install -g firebase-tools
     - dart pub global activate flutterfire_cli
     - flutterfire configure
   - Enable Authentication
   - Add Firestore & Storage Rules
   - Create Android & iOS Apps

4. **Run the App**:
   ```bash
     flutter pub get
     open -a simulator (to get iOS Simulator)
     flutter run
   ```

---

## Contributions

Contributions are welcome! If you'd like to enhance the app or add new features, feel free to submit a pull request.
