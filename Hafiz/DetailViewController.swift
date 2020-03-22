//
//  DetailViewController.swift
//  Hafiz
//
//  Created by Syafiq Mastor on 22/03/2020.
//  Copyright © 2020 syafiq. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var viewModel = ViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.tableView.dataSource = self
        bind()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func bind() {
        viewModel.state = { [weak self] state in
            guard let self = self else { return }
            switch state {
            case .start:
                print("start")
            case .finish:
                self.tableView.reloadData()
            }
        }
    }
}

extension DetailViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.formArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else { return UITableViewCell() }
        cell.prepare(form: viewModel.formArray[indexPath.row])
        return cell
    }
}
