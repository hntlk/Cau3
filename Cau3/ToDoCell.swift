//
//  ToDoCell.swift
//  Cau3
//
//  Created by Cntt22 on 7/5/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configCellWith(event: ToDo){
        todoLabel.text = event.title
    }
}
