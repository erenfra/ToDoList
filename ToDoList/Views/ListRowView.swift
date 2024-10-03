//
//  ListRowView.swift
//  ToDoList
//
//  Created by Renato Oliveira Fraga on 10/2/24.
//

import SwiftUI

struct ListRowView: View {

  let item: ItemModel

  var body: some View {
    HStack {
      Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
        .foregroundColor(item.isCompleted ? .green : .red)
      Text(item.title)
      Spacer()
    }.font(.title2)
      .padding(.vertical, 8)
  }
}

#Preview {
    ListRowView(item: ItemModel(title: "Item 1", isCompleted: true))

}
