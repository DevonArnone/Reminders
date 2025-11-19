# 📝 Reminders (SwiftUI App)

A lightweight, customizable to-do list app built with SwiftUI, featuring editable list titles, color selection, and a clean minimalist interface inspired by Apple’s Reminders app.


## 🚀 Overview

This project is a simple but elegant Reminders-style application.
Users can:
	•	Create, edit, and delete reminders
	•	Mark tasks as complete
	•	Edit the list’s title
	•	Choose a custom color theme
	•	Enjoy a responsive, clean SwiftUI design

Everything is powered by SwiftUI’s binding system and Apple’s native UI components.


## 📱 Features

✔ Task Management
	•	Add reminders using a floating + button
	•	Swipe to delete items
	•	Inline text editing for reminder titles
	•	Tap the circle to toggle completion

🎨 Custom List Color Picker
	•	Very clean ColorChooser grid
	•	Circular color buttons
	•	Selected color is highlighted with a white stroke
	•	Color immediately updates the UI theme

🧩 Edit Sheet
	•	Change list name
	•	Change list color
	•	Elegant rounded card-style layout
	•	Auto-adapts to light/dark mode

🧱 Simple MVVM-ish Structure
	•	Models separated into Models.swift
	•	Views structured cleanly (ContentView, EditSheet, ColorChooser)


## 🛠️ Technologies Used
	•	SwiftUI
	•	MVVM-inspired structure
	•	iOS 17+ (recommended)
	•	Xcode Preview macros
	•	Adaptive LazyVGrid for color picker



## 📘 Code Highlights

ColorChooser.swift

A fully reusable color picker component using LazyVGrid and @Binding.

ContentView.swift

Main task list UI:
	•	Reminder list
	•	Checkmark toggle
	•	Add/delete reminders
	•	Title display
	•	Sheet presentation

EditSheet.swift
	•	User can rename the list
	•	Change accent color
	•	Clean card-styled components

Models.swift

Lightweight models for reminders and list data using UUID for identity.


## 🧑‍💻 How to Run
	1.	Open the project in Xcode 15+
	2.	Make sure iOS target is set correctly
	3.	Run the app on any simulator or device
	4.	Tap the info button to edit list settings
	5.	Add reminders with the floating blue + button


## 👨‍🎨 Future Roadmap
	•	Add multiple lists
	•	Add due dates
	•	Add sections or tags
	•	Add persistent storage with CoreData or AppStorage
	•	Sync across devices with iCloud
