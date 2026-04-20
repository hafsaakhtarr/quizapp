# Trivia Quiz App

A Flutter trivia quiz that fetches live questions from the Open Trivia Database.

## Setup

1. Copy all `.dart` files and `pubspec.yaml` into your `lib/` folder
2. Run `flutter pub get`
3. Run `flutter run`

## Features

- **Live Data**: Fetches 10 General Knowledge questions from Open Trivia DB
- **Score Tracking**: Real-time score display
- **Clean UI**: Progress bar, color-coded answers (green = correct, red = wrong)
- **HTML Decoding**: Automatically decodes special characters like `&quot;` and `&#039;`
- **Shuffle Answers**: Answer options randomized each quiz
