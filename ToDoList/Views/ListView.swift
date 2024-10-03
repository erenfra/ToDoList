//
//  ContentView.swift
//  ToDoList
//
//  Created by Renato Oliveira Fraga on 10/2/24.
//

import SwiftUI

struct ListView: View {

  @State var items: [ItemModel] = [
    ItemModel(title: "This is the first title", isCompleted: false),
    ItemModel(title: "This is the second title", isCompleted: true),
    ItemModel(title: "This is the third title", isCompleted: false)
  ]

  var body: some View {
    List {
      ForEach(items) { item in
        ListRowView(item: item)
      }

    }
    .listStyle(.plain)
    .listRowSeparator(.hidden)
    .navigationTitle("ToDo List")
    .navigationBarItems(
      leading: EditButton(),
      trailing: NavigationLink("Add", destination: AddView()))

  }
}

#Preview {
  NavigationStack {
    ListView()
  }
}
