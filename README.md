# Radary 

Radary is a mobile application designed to enable citizens to
report local issues such as potholes, broken streetlights,
accumulated waste, and other community concerns directly to the relevant authorities.By streamlining
communication between citizens and municipal services, the app
enhances community engagement and improves local infrastructure
maintenance.It also provides a feature that allows citizens to report accidents(ex. car accidents,fires,...) with a quick and instant response by the relevant authorities with the help of the AI system that works to determine the geographical location through the uploaded image and determine its priority to ensure suitable support.

## Contributors

- [Mustafa Magdy](https://github.com/mustafa-dev-nasr)
- [Layal Ayman](https://github.com/layalaymann)
## Getting Started

1. **Clone the Repository**  
   To begin working with the Radary project, clone the repository using the following command:

   ```bash
   git clone https://github.com/Radary-App/radary-mobile.git
   ```

# System Design

This document outlines the system design for the project, highlighting the core components and feature modules.

## Core

- **DI (Dependency Injection)**
  - Using `get_it` for dependency injection.
- **Networking**
  - Utilizing `Dio` and `Retrofit` for networking operations.
- **Routing**
  - Handling navigation and routing within the app.
- **Helpers**
  - Utility functions and helper classes.
- **Theming**
  - Managing app-wide theming and styles.
- **Widgets**
  - Reusable widgets used across different parts of the app.

## Features

### Home

This is a feature module for the home screen.

#### Home Module Structure

- **data**
  - **models**
    - Data models representing the structure of the data.
  - **repo**
    - Repository pattern for data access and management.
- **logic**
  - **cubit/states**
    - Business logic layer using Cubit and states for state management.
- **ui**
  - **screens/widgets**
    - UI components and screens for the home feature.
.
## Screenshots

![mvvm](https://github.com/user-attachments/assets/1f118e0b-8424-48df-8ed3-4c33e21de174)


## Dependencies
![2024-09-09_17h38_49](https://github.com/user-attachments/assets/784ef738-09ae-47c6-8cee-672fd848c801)


## Deployment

To deploy this application, follow these steps:

### 1. Build the Application

- **For Android:**
  ```bash
  flutter build apk

- **For iOS:**
  ```bash
  flutter build ios
