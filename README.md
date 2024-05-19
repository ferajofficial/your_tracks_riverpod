<!-- # your_tracks_riverpod

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
# Your Tracks

Your Tracks is a hybrid mobile application built using Flutter, Firebase, and Riverpod. This application allows users to manage your personal expenses with full CRUD (Create, Read, Update, Delete) operations. 

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Firebase Setup](#firebase-setup)
  - [Riverpod Integration](#riverpod-integration)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Create** New Expenses
- **Read** Read Your Expenses 
- **Update** Existing Expenses
- **Delete** Expenses
- Integration with Firebase for backend services
- State management using Riverpod

## Getting Started

### Prerequisites

Ensure you have the following installed on your local development environment:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Firebase CLI](https://firebase.google.com/docs/cli)
- [Dart](https://dart.dev/get-dart)

### Installation

1. **Clone the repository**

    ```bash
    git clone https://github.com/ferajofficial/your_tracks_riverpod
    cd your-tracks
    ```

2. **Install dependencies**

    ```bash
    flutter pub get
    ```

3. **Set up Firebase**

    Follow the instructions in the [Firebase Setup](#firebase-setup) section to configure Firebase for the project.

4. **Run the application**

    ```bash
    flutter run
    ```

## Usage

### Firebase Setup

1. **Create a Firebase project**

    Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.

2. **Add Project to the Firebase Using Firebase CLI**

    - Follow the CLI Guidelines [Firebase CLI](https://firebase.google.com/docs/cli) to Setup the project for your prefereable platforms.


3. **Enable Firestore**

    In the Firebase Console, enable Firestore in the Database section.


### Riverpod Integration

Your Tracks uses Riverpod for state management. Here's a brief overview of how Riverpod is integrated into the project:

1. **Add Riverpod to dependencies**

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
      flutter_riverpod: ^1.0.0
      ...
    ```

2. **Create Providers**

    Define providers for managing state. Example:

    ```dart
    final trackProvider = StateNotifierProvider<TrackNotifier, List<Track>>((ref) {
      return TrackNotifier();
    });
    ```

3. **Use Providers in Widgets**

    Use the `Consumer` widget to listen to providers and update UI accordingly.

    ```dart
    class TrackList extends ConsumerWidget {
      @override
      Widget build(BuildContext context, ScopedReader watch) {
        final tracks = watch(trackProvider);

        return ListView.builder(
          itemCount: tracks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tracks[index].name),
              ...
            );
          },
        );
      }
    }
    ```

## Contributing

We welcome contributions to the Your Tracks project! Please read our [contributing guidelines](CONTRIBUTING.md) for details on the process for submitting pull requests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

##### ---------------------💐 THANKS 💐---------------------