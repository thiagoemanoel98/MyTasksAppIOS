//
//  TaskTableViewCell.swift
//  MyTasks
//
//  Created by Thiago Emanoel on 02/09/23.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hourLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var categoryLabelName: UILabel!
        
    @IBOutlet weak var categoryView: UIView!
    
    @IBOutlet weak var taskDescriptionLabel: UILabel!
}
