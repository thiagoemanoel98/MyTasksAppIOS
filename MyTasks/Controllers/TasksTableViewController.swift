//
//  TasksTableViewController.swift
//  MyTasks
//
//  Created by Thiago Emanoel on 02/09/23.
//

import UIKit

let work = Category(name: "Work", color: UIColor.green)
let study = Category(name: "Study", color: UIColor.blue)

let tasks: [Task] = [
    Task(name: "This is my work list task", date: Date(), category: work),
    Task(name: "Study math for my Computer Science class Computer Science class Computer Science class", date: Date(), category: study),
    Task(name: "Study math", date: Date(), category: study)
]

class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TableView precisa implementar os de baixo:
    
    // Quantas linhas vou ter por seçao?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // quantas linhas mostrar?
        return tasks.count
    }
    
    // Chamado sempre que uma celula eh mostrada na tela (para cada task)
    // Eh o metodo que coloca os dados na celula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // a ceclula que esse metodo retorna eh do tipo TaskTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryLabelName.text = task.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
