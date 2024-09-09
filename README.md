# Radary 

Radary Mobile is a community-based app that enables citizens to report urgent and local issues, such as potholes, broken lampposts, graffiti, and more, directly to the relevant authorities. The app leverages geolocation for precise location reporting and includes a voting system that prioritizes issues based on urgency and impact. This ensures that the most important issues are addressed first, improves communication between citizens and municipal services, and enhances the maintenance of local infrastructure.
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
