//
//  ItemModel.swift
//  ToDoList
//
//  Created by Renato Oliveira Fraga on 10/2/24.
//

import Foundation

struct ItemModel: Identifiable {
  let id: String = UUID().uuidString
  let title: String
  let isCompleted: Bool
}
