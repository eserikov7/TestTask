//
//  UITickersVC.swift
//  TestTask
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import TestTaskModel

class UITickersVC: UITableViewController {

    var service:TickersServiceAbstract!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        refreshData()
    }
    
    private func setupUI() {
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(refreshData), for: .valueChanged)
    }
    
    @objc func refreshData() {
        if refreshControl?.isRefreshing != true {
            UIStyleActivityIndicator.show(in: tableView)
        }
        service.fetch { [weak self] (result) in
            switch result {
            case .success(_):
                self?.tableView.reloadData()
            case .failure(let error):
                self?.showAlert(message: error.localizedDescription)
            }
            UIStyleActivityIndicator.hide()
            self?.refreshControl?.endRefreshing()
        }
    }
    // MARK: - DataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return service.tickers.count
    }
    
    let cellId = "cellId"
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        
        cell?.textLabel?.text = service.tickers[indexPath.row].name
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = FormBuilder.indstantTickersInfoVC(ticker: service.tickers[indexPath.row])
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
