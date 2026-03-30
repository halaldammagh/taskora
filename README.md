# Taskora App
Taskora is a modern task and project management application designed to help users organize their work, track progress, and stay productive through a clean and structured experience.
---

## Problem Statement
Managing daily tasks and projects can become overwhelming without proper organization tools. Many users struggle to track progress, prioritize tasks, and stay consistent.
---

## Solution

Taskora provides a simple and intuitive way to manage tasks and projects by offering structured workflows, progress tracking, and clear status indicators to improve productivity and organization.
---

## Key Features
*  User Authentication (Login / Register)
* Task Management (Create, Edit, Delete)
* Project Organization
* Progress Tracking
* Status System (Pending, In Progress, Completed)
* Priority System (High, Medium, Low)
* Clean and Responsive UI

---
## Architecture
This project is built using **Clean Architecture** to ensure scalability, maintainability, and separation of concerns.
```
lib/
├── core/
├── features/
│   └── splash_onboarding/
│       ├── data/
│       ├── domain/
│       └── presentation/
```
##  Design System
The app follows a structured design system including:
* Color System (Primary, Accent, Status, Priority)
* Typography System (Reusable Text Styles)
* Spacing System (4pt Grid)
* Reusable Components

## Tech Stack
* Flutter
* Dart
* Dio (API Integration)
* Clean Architecture
* Git & GitHub Workflo

## API Integration
This project demonstrates professional API integration using Dio:
* Centralized API endpoints
* Error handling
* Request/Response models
* Scalable networking layer

## Git Workflow

* `main` → production
* `develop` → main working branch
* `feature/*` → feature development
