//
//  TableViewCell.swift
//  Hafiz
//
//  Created by Syafiq Mastor on 22/03/2020.
//  Copyright © 2020 syafiq. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func prepare(form : Form) {
        titleLabel.text = form.title
    }
}
