# Flutter Countdown App with Timer and GIF Images

This Flutter project demonstrates an efficient way to handle large lists with dynamic content. Each list item contains:
- A countdown timer.
- A GIF image loaded from assets.

The project is built using **Clean Architecture** and utilizes **GetX** for state management to optimize performance.

## Features
- **Clean Architecture**: Separation of concerns between layers (Core, Data, Domain, and Presentation).
- **Optimized ListView**: Efficient handling of 1000+ items with smooth scrolling.
- **Countdown Timer**: Each list item features a countdown timer.
- **Dynamic GIFs**: Each list item displays a unique or cycling GIF loaded from the assets folder.
- **GetX for State Management**: Lightweight and reactive state management using GetX's `Obx`.

## Project Structure

```bash
lib/
 ├── core/
 │    └── utils/
 ├── data/
 │    ├── models/
 ├── domain/
 ├── presentation/
 │    ├── controllers/
 │    └── views/
 └── main.dart
