//
//  ContentView.swift
//  ToDoList
//
//  Created by Renato Oliveira Fraga on 10/2/24.
//

import SwiftUI

struct ListView: View {

  @State var items: [ItemModel] = []

  var body: some View {
    List {
      //ListRowView(title: "This is the first title")
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
