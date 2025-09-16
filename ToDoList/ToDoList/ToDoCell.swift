//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Student on 08/09/25.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkMarkTapped(sender : ToDoCell)
}


class ToDoCell: UITableViewCell {

    weak var delegate : ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    
    @IBOutlet weak var tittleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func isCompleteButtonTapped(_ sender: UIButton) {
        
        delegate?.checkMarkTapped(sender: self)
    }
    
}
