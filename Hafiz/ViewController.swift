//
//  ViewController.swift
//  Hafiz
//
//  Created by Syafiq Mastor on 22/03/2020.
//  Copyright © 2020 syafiq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doConditionA(_ sender: Any) {
        
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
        let viewModel = ViewModel(requirement: ViewModel.Requirement(isConditionA: true))
        viewController.viewModel = viewModel
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func doConditionB(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
        let viewModel = ViewModel(requirement: ViewModel.Requirement(isConditionB: true))
        viewController.viewModel = viewModel
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

