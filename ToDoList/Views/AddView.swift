//
//  AddView.swift
//  ToDoList
//
//  Created by Renato Oliveira Fraga on 10/2/24.
//

import SwiftUI

struct AddView: View {
  @State var textFieldText: String = ""
    var body: some View {
      ScrollView {
        VStack {
          TextField("Enter your item", text: $textFieldText)
            .padding(.horizontal)
            .frame(height: 55)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
          Button {

          } label: {
            Text("SAVE")
              .foregroundStyle(.white)
              .font(.headline)
              .frame(height: 55)
              .frame(maxWidth: .infinity)
              .background(Color.accentColor)
              .cornerRadius(10)
          }

          Spacer()
        }.padding(14)
      }
      .navigationTitle("Add an Item")
    }
}

#Preview {
  NavigationStack {
    AddView()
  }
}
