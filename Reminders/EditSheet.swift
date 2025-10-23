//
//  EditSheet.swift
//  Reminders
//
//  Created by Devon Arnone on 10/21/25.
//

import SwiftUI

struct EditSheet: View {
    @Binding var selectedColor: Color
    @Binding var selectedTitle: String
    
    var body: some View {
        VStack(spacing: 24) {
            Text("List Info")
                .font(.title)
                .foregroundStyle(selectedColor)

            VStack(spacing: 16) {
                Image(systemName: "list.bullet.circle.fill")
                    .font(.system(size: 88))
                    .foregroundStyle(selectedColor)

                TextField("List", text: $selectedTitle)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 14)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .foregroundStyle(selectedColor)
            }
            .padding(20)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))

            VStack {
                ColorChooser(selectedColor: $selectedColor)
                    .padding(.vertical, 8)
            }
            .padding(20)
            .frame(maxWidth: .infinity)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))

            Spacer()
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var selectedColor: Color = .red
    @Previewable @State var selectedTitle: String = "List"
    
    EditSheet(selectedColor: $selectedColor, selectedTitle: $selectedTitle)
        .preferredColorScheme(.light)
}
