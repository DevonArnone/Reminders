//
//  ContentView.swift
//  Reminders
//
//  Created by Devon Arnone on 10/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isEditing: Bool = false
    @State private var page: RemindersPage = RemindersPage(title: "List", items: [], color: .blue)
    
    var body: some View {
        VStack {
            HStack {
                Text(page.title)
                    .font(.largeTitle.bold())
                    .foregroundStyle(page.color)
                Spacer()
                Button {
                    isEditing = true
                } label: {
                    Image(systemName: "info.circle")
                        .font(.title3)
                }
                .buttonStyle(.plain)
                .tint(page.color)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            
            List {
                ForEach($page.items) { $reminder in
                    HStack(spacing: 16) {
                        Button {
                            reminder.isCompleted.toggle()
                        }
                        
                        label: {
                            Image(systemName: reminder.isCompleted ? "checkmark.circle.fill" : "circle")
                                .font(.system(size: 24))
                        }
                        .buttonStyle(.plain)
                        .tint(page.color)

                        TextField("Reminder", text: $reminder.title)
                            .font(.title3)
                    }
                    .padding(.vertical, 8)
                }
                .onDelete { indexSet in
                    page.items.remove(atOffsets: indexSet)
                }
            }
            .listStyle(.plain)
            .overlay(alignment: .bottomTrailing) {
                Button {
                    page.items.append(Reminder(title: "", isCompleted: false))
                }
                label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 48, weight: .semibold))
                }
                .foregroundStyle(page.color)
                .padding(.trailing, 24)
                .padding(.bottom, 16)
            }

        }
        .sheet(isPresented: $isEditing) {
            EditSheet(selectedColor: $page.color, selectedTitle: $page.title)
        }
    }
}

#Preview {
    ContentView()
}
