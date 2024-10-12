
# Flutter BLoC & Cubit Workshop Tutorial

This repository is part of a workshop designed to teach the fundamentals of state management using **Cubit** and **BLoC** in Flutter. It covers concepts ranging from simple usage to more advanced techniques for handling state in your Flutter applications.

## Overview

The project is organized into different levels of complexity, with a focus on understanding and implementing Cubit and BLoC patterns. You will find separate folders containing example implementations for basic, simple, standard, and advanced use cases.

### Folder Structure

- **lib/widgets**: Custom reusable widgets used across the project.
  - `custom_floating_action_button.dart`, `custom_scaffold.dart`, `custom_text.dart`
- **utils/**: Contains utility functions and helpers used throughout the application.
- **lib/bloc**
  - **advanced/**: Contains more complex examples of BLoC usage with events and states.
    - `advanced_bloc.dart`: BLoC implementation.
    - `advanced_event.dart`: Definition of events.
    - `advanced_state.dart`: Definition of states.
  - **basic/**: Basic counter example using Cubit.
    - `basic_counter_cubit.dart`: Simple Cubit implementation.
  - **simple/**: Another simple Cubit counter implementation.
    - `simple_counter_cubit.dart`
  - **standard/**: Standard implementation of Cubit with separate states.
    - `standard_counter_cubit.dart`
    - `standard_counter_state.dart`
  - **cart/**: Manages the shopping cart functionality.
    - `cart_bloc.dart`: Handles cart-related states and events.
    - `cart_event.dart`: Defines all events related to the shopping cart.
    - `cart_state.dart`: Defines the state of the shopping cart including loading, error, and data states.
    
- **lib/pages**: Contains the different UI screens that demonstrate the BLoC and Cubit logic.
  - `ant_screen.dart`: Uses **basic cubit** to demonstrate a simple counter.
  - `bee_screen.dart`: Uses **simple cubit** for counter management.
  - `cat_screen.dart`: Uses **standard cubit** with separate states for a more structured approach.
  - `dolphin_screen.dart`: Uses **advanced BLoC** with events and states for more complex interactions.
  - `home_screen.dart`: Main screen for navigating between examples.
  - `page_not_found_screen.dart`: Custom 404 page.
  - `shopping_cart_screen.dart` Uses **cart BLoC** , The UI that presents the shopping cart to the user. It utilizes the `CartBloc` to display the current items, handle user actions like adding or removing items, and manage the visual feedback for loading and error states.


### Shopping Cart Features

The shopping cart functionality provides users with a seamless experience in managing their selected items. The cart BLoC utilizes state management techniques to ensure that the UI reflects the current state of the cart accurately.

- **`cart_bloc.dart`**: Implements the business logic for managing the shopping cart. It listens for events such as adding items, removing items, and fetching cart data, emitting corresponding states.
  
- **`cart_event.dart`**: Defines the various events that can occur in the cart, allowing for a structured way to handle user interactions and actions related to the shopping cart.
  
- **`cart_state.dart`**: Represents the state of the shopping cart, providing information about the items in the cart, whether the cart is currently loading, or if there was an error fetching the data.

- **`shopping_cart_screen.dart`**: The UI that presents the shopping cart to the user. It utilizes the `CartBloc` to display the current items, handle user actions like adding or removing items, and manage the visual feedback for loading and error states.

With these components, users can easily manage their shopping experience, adding and removing items as needed, while the application handles state changes smoothly and efficiently.

## Topics Covered

1. **Cubit Basics**
2. **BLoC Architecture**
3. **State Management using Cubit and BLoC**
4. **Advanced BLoC with Events and States**
5. **Navigation & Error Handling**

## Getting Started

To get started with this repository, ensure you have Flutter installed and set up:

1. Clone the repository:
   ```bash
   git clone https://github.com/panmegatech/flutter_cubit_bloc.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Screenshots

Include screenshots of the different pages (e.g., ant_screen, bee_screen, etc.) once the project is running, for easier navigation and understanding.

## Contribution

Feel free to contribute by opening issues or submitting pull requests. Any feedback is appreciated!
