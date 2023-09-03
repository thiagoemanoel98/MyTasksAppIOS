//
//  Task.swift
//  MyTasks
//
//  Created by Thiago Emanoel on 02/09/23.
//

import Foundation
import UIKit

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: UIColor.black)
}
