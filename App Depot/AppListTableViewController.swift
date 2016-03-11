//
//  AppListTableViewController.swift
//  App Depot
//
//  Created by Francesco Perrotti-Garcia on 3/11/16.
//  Copyright © 2016 Francesco Perrotti-Garcia. All rights reserved.
//

import UIKit

class AppListTableViewController: UITableViewController, ViewModelInitializable {
    typealias ViewModel = AppListViewModel
    
    private let viewModel: ViewModel
    
    required init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(style: .Grouped)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AppListTableViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.apps.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let reuseIdentifier = "Cell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier)
            ?? UITableViewCell(style: .Default, reuseIdentifier: reuseIdentifier)
        
        cell.textLabel?.text = viewModel.apps[indexPath.row].name
        
        return cell

    }
}